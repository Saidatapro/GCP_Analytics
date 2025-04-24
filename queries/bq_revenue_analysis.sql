
-- Revenue breakdown by product category
SELECT 
  category,
  COUNT(order_id) AS total_orders,
  SUM(quantity * price) AS total_revenue,
  ROUND(AVG(quantity * price), 2) AS avg_order_value
FROM `project.dataset.gcp_orders_data`
GROUP BY category;
