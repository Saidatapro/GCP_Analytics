
-- Segment customers by total spend
SELECT 
  customer_id,
  COUNT(order_id) AS total_orders,
  SUM(quantity * price) AS total_spent,
  CASE
    WHEN SUM(quantity * price) > 1000 THEN 'High Value'
    WHEN SUM(quantity * price) BETWEEN 500 AND 1000 THEN 'Medium Value'
    ELSE 'Low Value'
  END AS customer_segment
FROM `project.dataset.gcp_orders_data`
GROUP BY customer_id;
