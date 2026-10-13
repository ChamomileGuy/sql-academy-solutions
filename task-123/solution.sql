SELECT 
 emp_name, 
 COUNT(*) AS task_count
FROM Employee e
JOIN Tasks t
 ON e.id = t.assignee_id
GROUP BY t.assignee_id, e.emp_name
HAVING COUNT(*) < 3;
