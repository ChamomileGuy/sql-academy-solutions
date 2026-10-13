SELECT good_name
FROM Goods
WHERE good_id NOT IN (
 SELECT good 
 FROM Payments
 WHERE EXTRACT(YEAR FROM date) = 2005
);

/*
SELECT g.good_name
FROM Goods g
LEFT JOIN Payments p
    ON g.good_id = p.good
    AND EXTRACT(YEAR FROM p.date) = 2005
WHERE p.payment_id IS NULL;
*/
