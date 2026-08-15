-- =========================================================
-- SALES ANALYTICS PROJECT
-- 02 - Category Analysis
-- =========================================================

USE sales_analytics;

-- 1. Sales by category
SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;

-- 2. Profit by category
SELECT
    category,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;

-- 3. Quantity by category
SELECT
    category,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY category
ORDER BY total_quantity DESC;

-- 4. Orders by category
SELECT
    category,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales
GROUP BY category
ORDER BY total_orders DESC;

-- 5. Category performance summary
SELECT
    category,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(cost), 2) AS total_cost,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0)) * 100, 2) AS profit_margin_percentage
FROM sales
GROUP BY category
ORDER BY total_sales DESC;
