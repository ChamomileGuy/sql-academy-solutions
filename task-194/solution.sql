SELECT e.name,
  COALESCE(SUM(o.amount), 0) AS total_amount
FROM employees e
LEFT JOIN orders o
 ON o.employee_id = e.id
 AND o.created_at >= '2024-01-01'
 AND o.created_at < '2025-01-01'
GROUP BY e.id, e.name;
