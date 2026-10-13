SELECT r.name,
  r.department_id,
  r.salary
FROM (
  SELECT e.name,
    e.department_id,
    e.salary,
    DENSE_RANK() OVER (
     PARTITION BY e.department_id
     ORDER BY e.salary
    ) AS salary_level
  FROM employees e
 ) r
WHERE r.salary_level <= 2;
