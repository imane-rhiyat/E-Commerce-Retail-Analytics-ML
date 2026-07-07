-- ==========================================
-- BUSINESS ANALYSIS QUERIES
-- ==========================================

-- ==========================================
-- 1. Corporate Revenue Summary
-- ==========================================
-- Note:
-- TotalLoss is stored as a negative value.
-- Adding it to gross sales produces the true net revenue.
SELECT 
    (SELECT SUM(TotalCost) FROM sales_transactions) AS gross_sales,
    (SELECT SUM(TotalLoss) FROM returns_transactions) AS total_returned_loss,
    (SELECT SUM(TotalCost) FROM sales_transactions) + (SELECT SUM(TotalLoss) FROM returns_transactions) AS true_net_revenue;

-- ==========================================
-- 2. Dataset Anchor Date
-- ==========================================

SELECT MAX(InvoiceDate) AS anchor_date 
FROM sales_transactions;

-- ==========================================
-- 3. Customer Churn Analysis
-- ==========================================

SELECT 
    CustomerID,
    MAX(InvoiceDate) AS customer_last_purchase,
    DATEDIFF('2011-12-09 12:50:00', MAX(InvoiceDate)) AS days_since_last_purchase,
    CASE 
        WHEN DATEDIFF('2011-12-09 12:50:00', MAX(InvoiceDate)) > 90 THEN 'Churned'
        ELSE 'Active'
    END AS churn_status
FROM sales_transactions
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID;

-- ==========================================
-- 4. RFM Metrics Calculation
-- ==========================================

SELECT 
    CustomerID,
    -- 1. Recency: Days between the anchor date and their last purchase
    DATEDIFF('2011-12-09 12:50:00', MAX(InvoiceDate)) AS recency,
    
    -- 2. Frequency: Count of unique shopping trips (Invoices)
    COUNT(DISTINCT InvoiceNo) AS frequency,
    
    -- 3. Monetary: Total gross cash spent by this customer
    SUM(TotalCost) AS monetary
FROM sales_transactions
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID;

-- ==========================================
-- 5. Monthly Revenue Trend Analysis
-- ==========================================

SELECT 
    YEAR(InvoiceDate) AS sales_year,
    MONTH(InvoiceDate) AS sales_month,
    ROUND(SUM(TotalCost), 2) AS current_month_revenue,
    
    -- The Window Function: Reaches 1 row back based on the chronological order
    LAG(ROUND(SUM(TotalCost), 2), 1) OVER (ORDER BY YEAR(InvoiceDate), MONTH(InvoiceDate)) AS previous_month_revenue
FROM sales_transactions
WHERE CustomerID IS NOT NULL
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY sales_year, sales_month;

