-- ============================================================
-- Project: Ecommerce Customer Analytics
-- File: 02_load_data.sql
-- Description:
-- Loads cleaned sales and returns datasets into MySQL.
-- ============================================================

USE ecommerce_analytics;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clean_sales.csv' 
INTO TABLE sales_transactions 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clean_returns.csv' 
INTO TABLE returns_transactions 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;