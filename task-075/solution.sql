SELECT 
 last_name, 
 first_name, 
 birthday
FROM Student
WHERE EXTRACT(MONTH FROM birthday) = 5;
