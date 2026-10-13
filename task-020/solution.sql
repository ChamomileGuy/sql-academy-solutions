SELECT 
 fm.status, 
 fm.member_name,
 SUM(p.amount*p.unit_price) AS costs
FROM FamilyMembers fm
JOIN Payments p
 ON fm.member_id = p.family_member
JOIN Goods g
 ON g.good_id = p.good
JOIN GoodTypes gt
 ON gt.good_type_id = g.type
WHERE gt.good_type_name = 'entertainment'
GROUP BY fm.member_id;
