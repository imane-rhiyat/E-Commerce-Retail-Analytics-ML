# E-Commerce Retail Analytics & Machine Learning

An end-to-end analytics project built using **Python, MySQL, SQL, Power BI, and Machine Learning** to transform raw e-commerce transactions into actionable business insights.

The project began as a business analytics solution focused on understanding sales performance, customer behavior, and revenue. After completing the analytical dashboard, it was extended with Machine Learning to segment customers using the RFM framework and K-Means clustering.

---

# Project Snapshot

| Metric | Value |
|---------|------:|
| Raw Transactions | **541,909** |
| Customers Analyzed | **4,372** |
| Countries | **38** |
| SQL Scripts | **4** |
| Dashboard | **Power BI** |
| Machine Learning Model | **K-Means (4 Clusters)** |

---

# Dashboard Preview

![Dashboard Overview](images/dashboard_overview.png)

---

# 1. Background & Business Problem

## Business Context

The dataset contains over half a million transactions from an international online retail company. Although the company collects large amounts of transactional data, raw records alone provide little business value without proper analysis.

Management needs visibility into revenue performance, customer purchasing behavior, product returns, and long-term customer value.

## Business Problem

Several important business questions cannot be answered directly from raw transactional data:

- How much revenue is actually generated after accounting for returns?
- Which customers purchase most frequently?
- Which customers are becoming inactive?
- How does revenue evolve over time?
- Can customers be grouped according to their purchasing behavior?

## Project Objective

Build an end-to-end analytics pipeline capable of transforming raw transaction data into meaningful business insights through data cleaning, SQL analysis, interactive dashboards, and customer segmentation.

---

# 2. Project Workflow

Unlike many analytics projects where Machine Learning is planned from the beginning, this project evolved progressively.

The initial objective was to build a complete business analytics solution. After understanding the business through SQL analysis and dashboarding, the project was extended with customer segmentation using Machine Learning.

## End-to-End Workflow

```text
                Raw Ecommerce Dataset
                       │
                       ▼
         Python Data Cleaning & Wrangling
                       │
                       ▼
          Clean Sales & Returns Datasets
                       │
                       ▼
              MySQL Relational Database
                       │
                       ▼
        SQL Business Analysis & Reporting
                       │
                       ▼
          Power BI Executive Dashboard
                       │
                       ▼
      Customer RFM Feature Engineering
                       │
                       ▼
       K-Means Customer Segmentation
```

---

## Data Organization

### Python

- Removed missing Customer IDs
- Removed duplicate transactions
- Cleaned sales and returns separately
- Generated cleaned datasets

### MySQL

Created relational tables to store:

- Sales Transactions
- Returns Transactions

SQL was then used to calculate:

- Net Revenue
- Monthly Revenue
- Customer Churn
- RFM Metrics
- Customer Dimension Table

### Power BI

Built an interactive dashboard including:

- Sales KPI
- Revenue Trends
- Geographic Sales Distribution
- RFM Summary
- Customer Overview

### Machine Learning

After completing the business analysis, RFM metrics were exported and used as input for Machine Learning.

The workflow included:

- Log Transformation
- Feature Scaling
- Elbow Method
- K-Means Clustering
- Customer Segment Identification

---

# 3. Executive Summary

The project successfully transformed more than 540,000 raw transactions into a structured analytical model.

Business analysis was first conducted using SQL and Power BI to understand company performance and customer activity.

After establishing these insights, customer-level RFM features were engineered and used to build a four-cluster K-Means model capable of identifying distinct customer groups.

The result is a complete analytics pipeline combining data engineering, business intelligence, and machine learning.

---

# 4. Insights Deep Dive

## Revenue Analysis

SQL queries were developed to calculate:

- Gross Revenue
- Return Losses
- Net Revenue
- Monthly Revenue Trends

These analyses reveal the financial impact of customer returns while providing a clear picture of business performance over time.

---

## Customer Behavior

Customer activity was measured using the RFM framework:

- **Recency** — Time since the customer's latest purchase.
- **Frequency** — Number of completed purchases.
- **Monetary** — Total customer spending.

These metrics provide a standardized view of customer engagement and value.

---

## Customer Segmentation

Using the engineered RFM dataset, K-Means clustering identified four customer groups with distinct purchasing behaviors.

These segments can support:

- Customer retention campaigns
- Personalized marketing
- Customer lifetime value analysis
- Resource prioritization

### Customer Segmentation

![Customer Segments](images/customer_segments.png)

---

# 5. Strategic Recommendations

Based on the analysis, several business opportunities emerge:

- Focus retention efforts on high-value customers.
- Monitor inactive customers before they churn.
- Personalize marketing campaigns using customer segments.
- Continuously monitor return rates to reduce revenue leakage.
- Use the Power BI dashboard as a central business monitoring tool.
- Integrate customer segmentation into future marketing strategies.

---

# Repository Structure

```text
E-Commerce-Retail-Analytics-ML/
│
├── data/
│   └── customer_segmented_rfm.csv
│
├── dashboard/
│   └── EcommerceDashboard.pbix
│
├── images/
│   ├── dashboard_overview.png
│   └── customer_segments.png
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

# Technical Skills Demonstrated

- Python
- Pandas
- NumPy
- SQL
- MySQL
- Power BI
- Data Cleaning
- Feature Engineering
- RFM Analysis
- Customer Churn Analysis
- Business Intelligence
- K-Means Clustering
- Scikit-Learn
- Data Visualization
- End-to-End Analytics Pipeline
