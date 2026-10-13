-- Если несколько клиентов с наибольшим количеством, ранги
SELECT name
FROM (
 SELECT 
  c.name,
  RANK() OVER(ORDER BY COUNT(*) DESC) AS rnk
 FROM EngagementRatings er
 JOIN Customers c
  ON c.customer_id = er.customer_id
  GROUP BY c.customer_id, c.name
)
WHERE rnk = 1


/* Если несколько клиентов с наибольшим количеством, подзапрос
SELECT c.name
FROM EngagementRatings er
JOIN Customers c
    ON c.customer_id = er.customer_id
GROUP BY c.customer_id, c.name
HAVING COUNT(*) = (
    SELECT MAX(cnt)
