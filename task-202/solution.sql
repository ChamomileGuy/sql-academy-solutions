SELECT DISTINCT d.name
FROM departments d
JOIN employees e
 ON e.department_id = d.id
WHERE e.salary > 170000;
