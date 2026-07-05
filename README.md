# Global E-Commerce Retail Analytics and Behavioral Segmentation

## Project Background and Objectives
This project analyzes an e-commerce retail dataset containing global transaction histories to uncover hidden purchasing patterns, isolate high-value revenue drivers, and identify operational revenue leakage from product returns. By executing a structured data pipeline from raw data extraction to machine learning modeling, this analysis provides data-driven strategies to maximize customer retention and optimize marketing spend.

### Core Objectives:
* Data Engineering and Cleaning: Programmatically handle missing data structures and isolate transaction types using Python.
* Relational Database Modeling: Build a scalable SQL schema to store permanent tables and views for structured reporting.
* Business Intelligence: Design a polished, executive dashboard in Power BI tracking commercial KPIs.
* Advanced Analytics: Implement an unsupervised machine learning algorithm (K-Means Clustering) to build an RFM customer segmentation profile.

---

## Data Structure Overview
The database architecture processes data across multiple logical domains including elements of time (InvoiceDate), customer identifiers (CustomerID), and operational order details (Quantity, UnitPrice, InvoiceNo). 

* Clean Sales Data: 400,000+ records of validated positive transactions used for core revenue tracking.
* Clean Returns Data: Isolated instances of canceled or refunded invoices representing commercial risk and revenue leakage.
