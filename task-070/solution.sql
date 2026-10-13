SELECT 
 CASE
  WHEN price <= 100 THEN 'economy'
  WHEN 100 < price AND price < 200 THEN 'comfort'
  ELSE 'premium'
 END AS category,
 COUNT(*)
FROM Rooms
GROUP BY category;
