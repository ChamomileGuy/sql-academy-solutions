SELECT g.good_name
FROM Goods g
JOIN Payments p
 ON g.good_id = p.good
GROUP BY g.good_id, g.good_name
HAVING COUNT(*) > 1
ORDER BY g.good_name;
