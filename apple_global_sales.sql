show databases;
use apple_sales_db;

CREATE TABLE apple_sales (
    sale_id VARCHAR(50),
    sale_date DATE,
    country VARCHAR(100),
    region VARCHAR(100),
    city VARCHAR(100),
    product_name VARCHAR(100),
    category VARCHAR(100),
    units_sold INT,
    revenue DECIMAL(10,2)
);
select * from apple_global_sales;

SELECT SUM(revenue_usd) AS total_revenue
FROM apple_global_sales;

SELECT product_name,
       SUM(revenue_usd) AS revenue
FROM apple_global_sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

SELECT country,
       SUM(revenue_usd) AS revenue
FROM apple_global_sales
GROUP BY country
ORDER BY revenue DESC;

SELECT category,
       AVG(customer_rating) AS avg_rating
FROM apple_global_sales
GROUP BY category;

SELECT return_status,
       COUNT(*) AS total_orders
FROM apple_global_sales
GROUP BY return_status;

SELECT sales_channel,
       SUM(revenue_usd) AS revenue
FROM apple_global_sales
GROUP BY sales_channel;









