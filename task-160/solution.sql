SELECT 
 c.name AS customer_name,
 COUNT(o.order_id) AS order_count 
FROM customers c
LEFT JOIN orders o
 ON c.customer_id = o.customer_id
 AND o.order_placed > '2024-03-02'
 AND o.order_placed <= '2024-03-31'
GROUP BY c.customer_id
ORDER BY order_count DESC
LIMIT 5;
