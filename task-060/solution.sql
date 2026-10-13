SELECT s.teacher
FROM Schedule s
JOIN Class c ON c.id = s.class
WHERE c.name LIKE '11%'
GROUP BY s.teacher
HAVING COUNT(DISTINCT s.class) = (
 SELECT COUNT(*)
 FROM Class
 WHERE name LIKE '11%'
);
