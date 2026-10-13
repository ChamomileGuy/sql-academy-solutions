SELECT 
 c.name AS customer_name,
 SUM(t.amount) AS total_spent
FROM transactions t
JOIN customers c
 ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 10;
