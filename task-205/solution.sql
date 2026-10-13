SELECT d.name,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM employees), 1) 
           AS headcount_share
FROM departments d
JOIN employees e
 ON e.department_id = d.id
GROUP BY d.id, d.name;
