-- ============================================================
-- Project: Ecommerce Customer Analytics
-- File: 01_database_setup.sql
-- Description:
-- Creates the ecommerce database and transactional tables.
-- ============================================================

CREATE DATABASE ecommerce_analytics;
USE ecommerce_analytics;
CREATE TABLE sales_transactions (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice NUMERIC(12, 2),
    CustomerID INT,
    Country VARCHAR(100),
    TotalCost NUMERIC(12, 2)
);
CREATE TABLE returns_transactions (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice NUMERIC(12, 2),
    CustomerID INT,
    Country VARCHAR(100),
    TotalLoss NUMERIC(12, 2)
);