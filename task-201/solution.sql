  s.total_amount
FROM employees e
JOIN (
  SELECT o.employee_id,
    SUM(o.amount) AS total_amount
  FROM orders o
  GROUP BY o.employee_id
 ) s
 ON s.employee_id = e.id
WHERE s.total_amount > (
  SELECT AVG(s2.total_amount)
  FROM (
    SELECT o2.employee_id,
      SUM(o2.amount) AS total_amount
    FROM orders o2
    GROUP BY o2.employee_id
   ) s2
  JOIN employees e2
   ON e2.id = s2.employee_id
  WHERE e2.department_id = e.department_id
 )
