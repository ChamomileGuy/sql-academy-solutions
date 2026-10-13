SELECT *
FROM (
 SELECT d.name,
   SUM(o.amount) AS revenue,
   ROUND(SUM(o.amount) * 100 / SUM(SUM(o.amount)) OVER (), 
               1) AS revenue_share
 FROM departments d
 JOIN employees e
  ON e.department_id = d.id
 JOIN orders o
  ON o.employee_id = e.id
 GROUP BY d.id, d.name
)
WHERE name IN ('Sales', 'Product');
