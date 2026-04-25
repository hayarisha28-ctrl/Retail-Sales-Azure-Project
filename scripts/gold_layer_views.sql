CREATE VIEW vw_kpis AS
SELECT SUM(total_amount) AS total_sales, COUNT(DISTINCT transaction_id) AS total_orders, SUM(quantity) AS total_items_sold
FROM silver_sales_table;

CREATE VIEW vw_top_customers AS
SELECT TOP 10 customer_id, SUM(total_amount) AS total_spent
FROM silver_sales_table
GROUP BY customer_id ORDER BY total_spent DESC;

CREATE VIEW vw_store_performance AS
SELECT store_location, SUM(total_amount) AS total_revenue
FROM silver_sales_table
GROUP BY store_location;
