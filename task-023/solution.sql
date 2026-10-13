SELECT 
 g.good_name, 
 p.unit_price
FROM GoodTypes gt
JOIN Goods g
 ON gt.good_type_id = g.type
JOIN Payments p
 ON g.good_id = p.good
WHERE gt.good_type_name = 'delicacies'
ORDER BY unit_price DESC 
LIMIT 1;
