
-- Monthly KPIs: orders and revenue
SELECT 
  FORMAT_DATE('%Y-%m', DATE(order_date)) AS month,
  COUNT(order_id) AS total_orders,
  SUM(quantity * price) AS total_revenue,
  COUNT(DISTINCT customer_id) AS active_customers
FROM `project.dataset.gcp_orders_data`
GROUP BY month
ORDER BY month;
