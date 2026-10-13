SELECT COUNT(*) AS count
FROM Student_in_class sic
JOIN Class c
 ON c.id = sic.class
WHERE name ~ '^10 B';
