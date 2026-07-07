# E-Commerce Retail Analytics & Machine Learning

An end-to-end data analytics project that transforms raw retail transaction data into actionable business insights using **Python, MySQL, SQL, Power BI, and Machine Learning**.

The project focuses on cleaning and organizing raw transactional data, building a relational database, performing business analysis with SQL, creating an interactive Power BI dashboard, and extending the analysis through customer segmentation using the RFM framework and K-Means clustering.

---

# Project Snapshot

| Metric | Value |
|---------|------:|
| Raw Transactions | 541,909 |
| Customers Analyzed | 4,372 |
| Countries | 38 |
| SQL Scripts | 4 |
| Dashboard | Power BI |
| Machine Learning Model | K-Means (4 Clusters) |

---

# Dashboard Preview

![Dashboard Overview](images/dashboard_overview.png)

---

# 1. Background & Business Problem

## Business Context

Retail companies generate large volumes of transactional data every day. While these records contain valuable information about customer purchases, returns, and sales performance, they provide limited business value until they are cleaned, organized, and analyzed.

The objective of this project was to build a complete analytics pipeline capable of transforming raw retail transactions into meaningful business insights for decision-making.

## Business Questions

This project answers several important business questions:

- What is the company's true revenue after accounting for product returns?
- How has monthly revenue evolved over time?
- Which customers purchase most frequently?
- Which customers are becoming inactive?
- How can customers be grouped according to their purchasing behavior?

---

# 2. Project Workflow

This project was developed progressively as my technical skills evolved.

I first built a complete business analytics pipeline using Python, SQL, MySQL, and Power BI. After completing the analytical solution, I extended the project by applying Machine Learning to perform customer segmentation using the RFM framework.

```
                Raw Excel Dataset
                       │
                       ▼
         Python Data Cleaning & Preparation
                       │
                       ▼
        Clean Sales & Returns CSV Files
                       │
                       ▼
             MySQL Relational Database
                       │
                       ▼
      SQL Analytics & Data Modeling
                       │
                       ▼
        Power BI Executive Dashboard
                       │
                       ▼
   Customer Segmentation (K-Means)
```

---

## Stage 1 — Data Preparation (Python)

The project began by exploring and preparing the raw Excel dataset using Python and Pandas.

Main tasks included:

- Loading the dataset
- Exploring data quality
- Identifying missing values
- Separating sales transactions from returned orders
- Creating calculated fields:
  - `TotalCost`
  - `TotalLoss`
  - `InvoiceYear`
  - `InvoiceMonth`
- Exporting cleaned datasets

Outputs:

- `clean_sales.csv`
- `clean_returns.csv`

---

## Stage 2 — Database Design & SQL Analytics

The cleaned datasets were imported into MySQL to create a structured analytical database.

### Database Tables

- `sales_transactions`
- `returns_transactions`
- `dim_customer_profiles`

### Business Analysis

SQL was used to calculate:

- Gross Revenue
- Return Losses
- Net Revenue
- Monthly Revenue Trends
- Customer Churn
- Customer RFM Metrics

### Data Modeling

A customer dimension table (`dim_customer_profiles`) was created to consolidate customer-level metrics into a single analytical dataset for reporting and analysis.

Two analytical SQL views were also created:

- `view_monthly_revenue_trends`
- `view_corporate_net_revenue`

---

## Stage 3 — Business Intelligence (Power BI)

The SQL database was connected to Power BI to build an interactive executive dashboard.

The dashboard includes:

- Revenue KPIs
- Net Revenue
- Product Returns
- Revenue by Country
- Monthly Revenue Trends
- Customer RFM Metrics

The dashboard uses the customer dimension table together with transactional tables to provide an integrated view of business performance.

---

## Stage 4 — Customer Segmentation (Machine Learning)

After completing the analytics pipeline, I extended the project by applying an introductory machine learning model.

Using the cleaned sales data, I created an RFM dataset in Python by calculating:

- **Recency**
- **Frequency**
- **Monetary**

The features were then:

- Log transformed
- Standardized using StandardScaler
- Clustered using a 4-cluster K-Means model

This stage demonstrates how a traditional analytics workflow can be extended with machine learning to identify customer segments based on purchasing behavior.

---

# 3. Executive Summary

This project transforms more than **541,000** raw retail transactions into a complete analytics solution.

Python was used to clean and prepare the data before loading it into a MySQL relational database.

SQL was used to design the database, build analytical queries, create customer-level metrics, and develop a customer dimension table for reporting.

Power BI was then used to create an executive dashboard that summarizes business performance through interactive visualizations.

Finally, customer segmentation was introduced using the RFM framework and K-Means clustering to demonstrate an introductory machine learning application within the same business context.

---

# 4. Insights Deep Dive

## Revenue Analysis

Business performance was evaluated through SQL by calculating:

- Gross Revenue
- Revenue Lost through Returns
- True Net Revenue
- Monthly Revenue Trends

These metrics provide a clear understanding of overall financial performance.

---

## Customer Analysis

Customer purchasing behavior was analyzed using the RFM framework.

- **Recency** measures how recently a customer made a purchase.
- **Frequency** measures how often a customer purchases.
- **Monetary** measures total customer spending.

These metrics provide a standardized view of customer value and engagement.

---

## Customer Segmentation

The engineered RFM dataset was used as the input for a K-Means clustering model, producing four customer segments with distinct purchasing behaviors.

The segmentation can support:

- Customer retention initiatives
- Targeted marketing campaigns
- Customer value analysis
- Business decision-making

---

# 5. Strategic Recommendations

Based on the analysis, the following business actions are recommended:

- Prioritize retention efforts for high-value customers.
- Monitor inactive customers before they churn.
- Develop targeted marketing strategies for different customer segments.
- Continue monitoring return rates to reduce revenue leakage.
- Use the Power BI dashboard for ongoing business performance tracking.
- Extend the project by exploring additional machine learning models for customer behavior prediction.

---

# Repository Structure

```text
E-Commerce-Retail-Analytics-ML/
│
├── data/
│   ├── clean_returns.csv
│   └── customer_segmented_rfm.csv
│
├── dashboard/
│   └── EcommerceDashboard.pbix
│
├── images/
│   └── dashboard_overview.png
│
├── notebooks/
│   └── ecommerce_analytics_pipeline.ipynb
│
├── sql/
│   ├── README.md
│   ├── 01_database_setup.sql
│   ├── 02_load_data.sql
│   ├── 03_analytical_queries.sql
│   └── 04_customer_dimension.sql
│
├── requirements.txt
│
└── README.md
```

---

# Technologies Used

- Python
- Pandas
- NumPy
- MySQL
- SQL
- Power BI
- Scikit-Learn
- K-Means Clustering
- StandardScaler
- Data Cleaning
- Feature Engineering
- RFM Analysis
- Business Intelligence
- Data Modeling

---

# Future Improvements

Future enhancements for this project include:

- Automating the ETL process.
- Deploying the pipeline to a cloud environment.
- Comparing K-Means with other clustering algorithms.
- Developing a predictive customer churn model.
- Publishing the dashboard through Power BI Service.
- Refreshing the pipeline with new transactional data.
