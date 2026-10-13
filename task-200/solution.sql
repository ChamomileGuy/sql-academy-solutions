SELECT c.name,
  COALESCE(SUM(o.amount), 0) AS total_amount
FROM customers c
LEFT JOIN orders o
 ON o.customer_id = c.id
GROUP BY c.id, c.name
