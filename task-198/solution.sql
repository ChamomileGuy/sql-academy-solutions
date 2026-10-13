SELECT e.department_id,
  COUNT(*) AS employees_with_manager
FROM employees e
WHERE manager_id IS NOT NULL 
GROUP BY e.department_id
