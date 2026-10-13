SELECT 
 rc.customer_id,
 COUNT(p.purchase_id) AS total_orders
FROM registered_customers rc
LEFT JOIN purchases p
 ON rc.customer_id = p.customer_id
GROUP BY rc.customer_id;
