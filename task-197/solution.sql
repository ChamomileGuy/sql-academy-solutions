SELECT e.name,
  e.salary
FROM employees e
WHERE e.department_id = 4
 OR e.department_id = 1
 AND e.salary > 140000;
