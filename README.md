# Strategic Customer Value Optimization: E-Commerce Segmentation

## 1. Background & Business Problem
A major online retail platform is experiencing high marketing customer-acquisition costs with dropping retention rates. The business currently treats its entire customer base with uniform marketing promotions, leading to inefficient ad spend, low customer lifetime value (CLV), and missed revenue opportunities from top-tier spenders. 

The objective of this project is to build an end-to-end data pipeline that transforms raw transactional data into distinct behavioral customer cohorts using Recency, Frequency, and Monetary (RFM) metrics. By implementing a 4-cluster K-Means machine learning model, we aim to deliver tailored marketing strategies to maximize retention, re-engage dropping accounts, and boost company profitability.

---

## 2. Data Structure & Pipeline Architecture
The project is built as an interconnected data pipeline moving from raw transaction logs to enterprise business intelligence and machine learning deployment:

- **Data Engineering & Wrangling (Python/Pandas):** Audited database variance, handled missing identifiers, and isolated completed sales from returns.
- **Feature Engineering (Python/Pandas):** Aggregated transaction logs into granular customer-level Recency, Frequency, and Monetary metrics.
- **Business Intelligence (Power BI):** Developed an interactive executive dashboard to monitor macro sales trends, profit velocities, and return rates.
- **Advanced Analytics (Python/Scikit-Learn):** Resolved severe data right-skewness via mathematical log-transformations, standard-scaled features, and fit an optimized 4-cluster KMeans segmentation model.

---

## 3. Executive Summary (The "So What?")
By combining data engineering, Power BI visualizations, and Python machine learning, the database was condensed from over 500,000 raw transactional logs into four actionable customer tiers. 

Key Project Findings:
- High-Value Core: A dedicated group of Loyal Core Customers (Cluster 3) and VIP Spenders (Cluster 1) drive consistent operational revenue.
- Extreme Outliers: The model successfully isolates Extreme Outlier Accounts (Cluster 2) who present massive order frequencies and high monetary values, preventing them from skewing standard marketing distributions.
- Revenue Leakage: The Hibernating / At-Risk segment (Cluster 0) represents accounts requiring immediate re-engagement before total churn.

---

## 4. Deep Dive Insights & Visualizations

### Executive Power BI Sales & Returns Dashboard
The cleaned sales and return transaction flows were connected to Power BI to track macro-level business health, revenue metrics, and return patterns.

![Interactive Power BI Dashboard](powerbi_dashboard.png)

### Customer Cluster Analysis (RFM Machine Learning Segmentation)
The customer segments are evaluated across Recency, Frequency, and Monetary dimensions to map precise behavioral boundaries.

![Customer Segmentation Clusters](customer_clusters_chart.jpg)

---

## 5. Strategic Business Recommendations
Based on the behavioral traits mapped by the K-Means model in our analysis, the business should deploy the following targeted campaigns:

1. Extreme Outlier Accounts (Cluster 2 - Red):
   - Action: Provide custom B2B wholesale accounts, dedicated account managers, and bulk-order incentives to maintain high-value wholesale operations.
2. VIP Spenders / Whales (Cluster 1 - Orange):
   - Action: Protect baseline retention. Enroll them in an exclusive premium loyalty circle with early product rollouts and white-glove support to maximize customer lifetime value.
3. Loyal Core Customers (Cluster 3 - Dark Blue):
   - Action: Increase cross-selling efforts. Deploy recommendation engines based on past purchase descriptions to maintain their high frequency and increase their standard cart sizes.
4. Hibernating / At-Risk (Cluster 0 - Light Blue):
   - Action: Aggressive win-back campaigns. Automate re-engagement email sequences with significant financial incentives (e.g., "We miss you, here is 20% off") to reactivate accounts.
