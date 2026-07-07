# E-Commerce Retail Analytics & Machine Learning

An end-to-end analytics project that transforms over **540,000 e-commerce transactions** into actionable business intelligence using **Python, MySQL, SQL, Machine Learning (K-Means), and Power BI**.

The project demonstrates a complete analytics workflow—from raw transactional data to customer segmentation and executive dashboards—helping businesses better understand customer behavior, improve retention strategies, and support data-driven decision making.

---

# Project Snapshot

| Metric | Value |
|---------|------:|
| Raw Transactions | **541,909** |
| Customers Analyzed | **4,372** |
| Countries | **38** |
| Customer Segments | **4** |
| Machine Learning Model | **K-Means Clustering** |
| SQL Scripts | **4** |
| Dashboard | **Power BI** |

---

# Dashboard Preview

![Dashboard Overview](images/dashboard_overview.png)

---

# 1. Background & Business Problem

## Business Context

E-commerce businesses generate millions of transactional records, but raw data alone provides little value without proper analysis. Decision-makers need to understand customer behavior, revenue trends, and purchasing patterns to make informed strategic decisions.

## Business Problem

Without customer segmentation and analytical reporting, businesses face several challenges:

- Treat all customers the same regardless of their value.
- Fail to identify customers at risk of churning.
- Lose revenue without understanding the impact of product returns.
- Spend marketing budgets inefficiently.

## Project Objective

Develop a complete analytics solution capable of:

- Cleaning and preparing raw transactional data.
- Building a structured SQL database.
- Engineering customer-level analytical features.
- Segmenting customers using Machine Learning.
- Delivering interactive executive dashboards.

---

# 2. Data Structure

## End-to-End Analytics Workflow

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
          SQL Business Analytics & RFM
                       │
                       ▼
        Customer Feature Engineering
                       │
                       ▼
      K-Means Customer Segmentation
                       │
                       ▼
          Power BI Executive Dashboard
```

## Database Structure

| Table | Description |
|---------|-------------|
| sales_transactions | Stores completed customer purchases |
| returns_transactions | Stores returned products and associated losses |
| dim_customer_profiles | Customer-level RFM metrics and churn indicators |

## Technology Stack

| Layer | Technology |
|---------|------------|
| Data Cleaning | Python (Pandas, NumPy) |
| Database | MySQL |
| Business Analytics | SQL |
| Machine Learning | Scikit-Learn (K-Means) |
| Visualization | Power BI |

---

# 3. Executive Summary

The project transformed over half a million raw transaction records into a structured analytical model supporting business decision-making.

Customer purchasing behavior was quantified through **Recency**, **Frequency**, and **Monetary (RFM)** metrics engineered directly with SQL.

These features were standardized and used to train a **4-cluster K-Means model**, identifying meaningful customer groups with distinct purchasing behaviors.

The resulting Power BI dashboard provides stakeholders with a centralized view of revenue performance, customer activity, return losses, and geographic sales performance.

---

# 4. Insights Deep Dive

## Revenue Analysis

Business performance was evaluated using:

- Gross Sales
- Return Losses
- Net Revenue
- Monthly Revenue Trends

This provides a comprehensive understanding of financial performance while measuring the impact of product returns.

---

## Customer Analytics

Each customer was analyzed using the RFM framework:

- **Recency** — Days since the customer's most recent purchase.
- **Frequency** — Number of completed purchases.
- **Monetary** — Total customer spending after accounting for returns.

These metrics quantify customer engagement and purchasing value.

---

## Machine Learning Customer Segmentation

Following feature engineering and scaling, a **4-cluster K-Means model** grouped customers into four strategic segments:

- Loyal Core Customers
- VIP Customers
- At-Risk Customers
- Extreme Outlier Accounts

These segments provide a foundation for personalized marketing, retention strategies, and customer relationship management.

### Customer Segmentation

![Customer Segments](images/customer_segments.png)

---

# 5. Strategic Recommendations

Based on the analytical findings, the following business actions are recommended:

- Prioritize retention campaigns for high-value customers.
- Develop personalized marketing strategies for each customer segment.
- Monitor increasing customer recency to detect churn risk early.
- Continuously monitor return behavior to reduce revenue leakage.
- Use the Power BI dashboard as an executive decision-support tool.

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

# Project Highlights

- Cleaned and processed **541,909** e-commerce transactions using Python.
- Built a relational database and engineered customer-level analytical features using SQL.
- Created RFM metrics for customer behavior analysis.
- Developed a **4-cluster K-Means** customer segmentation model.
- Designed an interactive Power BI dashboard for executive reporting.
- Delivered an end-to-end analytics pipeline from raw data to business recommendations.

---

# Skills Demonstrated

- Python
- Pandas
- NumPy
- SQL
- MySQL
- Feature Engineering
- Customer Analytics
- RFM Analysis
- Customer Churn Analysis
- K-Means Clustering
- Scikit-Learn
- Power BI
- Business Intelligence
- Data Visualization
- End-to-End Data Analytics


