SELECT gt.good_type_name
FROM GoodTypes gt
WHERE NOT EXISTS (
 SELECT 1 
 FROM Goods g
 JOIN Payments p
  ON g.good_id = p.good
 WHERE gt.good_type_id = g.type
  AND EXTRACT(YEAR FROM p.date) = 2005
);

/*
SELECT gt.good_type_name
FROM GoodTypes gt
WHERE gt.good_type_id NOT IN (
    SELECT g.type 
    FROM Goods g
    JOIN Payments p
     ON g.good_id = p.good
    WHERE EXTRACT(YEAR FROM p.date) = 2005
);
*/
