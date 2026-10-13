SELECT 
 FLOOR(
  100.0 * COUNT(*) FILTER (WHERE EXTRACT(YEAR FROM 
            birthday) = 2000) / COUNT(*)
 ) AS percent
FROM Student;
