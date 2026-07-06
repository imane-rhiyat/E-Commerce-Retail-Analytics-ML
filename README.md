# End-to-End Retail Analytics: Customer Segmentation Using RFM & K-Means

An end-to-end data pipeline that transforms raw transactional e-commerce data into actionable customer segments using RFM (Recency, Frequency, Monetary) analysis and an optimized 4-cluster K-Means model.

## Project Architecture
1. Data Ingestion & Audit: Handled missing values (CustomerID) and audited statistical variance.
2. Data Cleaning & Partitioning: Separated baseline completed transactions from returns and generated clean tracking staging files.
3. Feature Engineering (RFM): Aggregated metrics at the granular customer level using custom SQL workflows.
4. Data Transformation: Normalized severe right-skew via log transformation and applied standard scaling.
5. Machine Learning Model: Evaluated and fit an optimal 4-cluster KMeans grouping model.

## Segment Performance Baselines
The customer base is classified into 4 distinct strategic operational categories:
- VIP Power Shoppers (Cluster 2): Top revenue drivers. Highest velocity and spending habits.
- Occasional / Stable (Cluster 3): Medium spenders who purchase periodically but show low churn indicators.
- New / Low-Value (Cluster 0): High recency scores (recently active) but low historic frequency.
- At-Risk / Hibernating (Cluster 1): Inactive accounts with prolonged purchase gaps.

## Data Note
The raw dataset (clean_sales.csv) exceeds GitHub's file size limits for direct upload. The complete end-to-end data cleaning, SQL transformation pipelines, and final cluster assignments are fully reproducible using the code provided in the Jupyter Notebook.

## Tech Stack & Environment
- Languages: Python, SQL
- Libraries: Pandas, NumPy, Scikit-Learn, Matplotlib, Seaborn
- Staging Datasets Produced: clean_sales.csv, clean_returns.csv, customer_segmented_rfm.csv

## How To Run
1. Clone the repository.
2. Ensure dependencies are satisfied: pip install scikit-learn pandas numpy matplotlib seaborn
3. Execute the workflow notebook to reproduce the results and visualize segment plots.
