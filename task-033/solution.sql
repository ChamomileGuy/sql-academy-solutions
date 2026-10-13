SELECT AVG(unit_price) AS cost
FROM Payments p
JOIN Goods g
 ON g.good_id = p.good
WHERE g.good_name ~ ' caviar$';
