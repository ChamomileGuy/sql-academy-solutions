SELECT 
 last_name || '.' || SUBSTRING(first_name FROM 1 FOR 1
        ) || '.' AS name
FROM Student
ORDER BY last_name, first_name;
