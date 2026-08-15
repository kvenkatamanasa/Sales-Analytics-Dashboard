-- =========================================================
-- SALES ANALYTICS PROJECT
-- 01 - Basic Analysis
-- Database: sales_analytics
-- Final table: sales
-- =========================================================

USE sales_analytics;

-- 1. Check the number of records
SELECT COUNT(*) AS total_records
FROM sales;

-- 2. Preview the data
SELECT *
FROM sales
LIMIT 10;

-- 3. Basic KPI analysis
SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(cost), 2) AS total_cost,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(sales), 2) AS average_order_value,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0)) * 100, 2) AS profit_margin_percentage
FROM sales;

-- 4. Minimum, maximum and average sales
SELECT
    ROUND(MIN(sales), 2) AS minimum_sales,
    ROUND(MAX(sales), 2) AS maximum_sales,
    ROUND(AVG(sales), 2) AS average_sales
FROM sales;

-- 5. Date range
SELECT
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date
FROM sales;
