-- ============================================================
-- Project: Ecommerce Customer Analytics
-- File: 04_customer_dimension.sql
-- Description:
-- Creates the customer dimension table and analytical views
-- used for reporting and dashboarding.
-- ============================================================
DROP VIEW IF EXISTS view_corporate_net_revenue;
DROP VIEW IF EXISTS view_monthly_revenue_trends;
DROP TABLE IF EXISTS dim_customer_profiles;
-- ==========================================
-- STEP 1: Create Customer Dimension Table
-- ==========================================

CREATE TABLE dim_customer_profiles (
    CustomerID INT NOT NULL,
    recency INT,
    frequency INT,
    net_monetary NUMERIC(12,2),
    customer_last_purchase DATETIME,
    days_since_last_purchase INT,
    churn_status VARCHAR(10),
    PRIMARY KEY (CustomerID)
) AS
SELECT 
    sales.CustomerID,
    sales.recency,
    sales.frequency,
    -- Subtract clean return totals from clean sales totals
    ROUND(sales.gross_monetary + IFNULL(ret.total_loss, 0), 2) AS net_monetary,
    sales.customer_last_purchase,
    sales.days_since_last_purchase,
    sales.churn_status
FROM (
    -- Subquery A: ONLY actual sales (Excluding any 'C' invoices)
    SELECT 
        CustomerID,
        DATEDIFF('2011-12-09 12:50:00', MAX(InvoiceDate)) AS recency,
        COUNT(DISTINCT InvoiceNo) AS frequency,
        SUM(TotalCost) AS gross_monetary,
        MAX(InvoiceDate) AS customer_last_purchase,
        DATEDIFF('2011-12-09 12:50:00', MAX(InvoiceDate)) AS days_since_last_purchase,
        CASE 
            WHEN DATEDIFF('2011-12-09 12:50:00', MAX(InvoiceDate)) > 90 THEN 'Churned'
            ELSE 'Active'
        END AS churn_status
    FROM sales_transactions
    WHERE CustomerID IS NOT NULL 
      AND InvoiceNo NOT LIKE 'C%' -- Exclude cancelled invoices to prevent double-counting returned transactions.
    GROUP BY CustomerID
) sales
LEFT JOIN (
    -- Subquery B: Clean return totals per customer
    SELECT 
        CustomerID, 
        SUM(TotalLoss) AS total_loss
    FROM returns_transactions
    WHERE CustomerID IS NOT NULL
    GROUP BY CustomerID
) ret ON sales.CustomerID = ret.CustomerID;

-- ==========================================
-- STEP 2: Create Virtual Month-over-Month View
-- ==========================================
CREATE VIEW view_monthly_revenue_trends AS
SELECT 
    YEAR(InvoiceDate) AS sales_year,
    MONTH(InvoiceDate) AS sales_month,
    ROUND(SUM(TotalCost), 2) AS current_month_revenue,
    LAG(ROUND(SUM(TotalCost), 2), 1) OVER (ORDER BY YEAR(InvoiceDate), MONTH(InvoiceDate)) AS previous_month_revenue
FROM sales_transactions
WHERE CustomerID IS NOT NULL
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate);

-- ==========================================
-- STEP 3: Create Virtual Corporate Net Revenue View
-- ==========================================
CREATE VIEW view_corporate_net_revenue AS
SELECT 
    (SELECT SUM(TotalCost) FROM sales_transactions) AS gross_sales,
    (SELECT SUM(TotalLoss) FROM returns_transactions) AS total_returned_loss,
    (SELECT SUM(TotalCost) FROM sales_transactions) + (SELECT SUM(TotalLoss) FROM returns_transactions) AS true_net_revenue;