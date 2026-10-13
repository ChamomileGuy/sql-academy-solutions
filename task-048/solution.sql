SELECT 
 c.name, 
 COUNT(sic.student) AS count
FROM Student_in_class sic
JOIN Class c
 ON c.id = sic.class
GROUP BY c.name
ORDER BY count DESC;
