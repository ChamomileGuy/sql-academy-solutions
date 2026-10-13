SELECT d.name,
  COUNT(DISTINCT e.id) AS employees_count,
  COALESCE(SUM(o.amount), 0) AS total_amount
FROM departments d
JOIN employees e
 ON e.department_id = d.id
LEFT JOIN orders o
 ON o.employee_id = e.id
GROUP BY d.id, d.name;
