SELECT e.name
FROM employees e
WHERE NOT EXISTS (
  SELECT 1
  FROM employees m
  WHERE m.manager_id = e.id
 );
