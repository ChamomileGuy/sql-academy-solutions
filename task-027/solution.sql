SELECT 
 gt.good_type_name,
 SUM(unit_price * amount) AS costs
FROM GoodTypes gt
JOIN Goods g
 ON gt.good_type_id = g.type
JOIN Payments p
 ON g.good_id = p.good
WHERE EXTRACT(YEAR FROM p.date) = 2005
GROUP BY gt.good_type_id, gt.good_type_name 
ORDER BY costs DESC;
