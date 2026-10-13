SELECT 
 fm.member_name,
 fm.status,
 SUM(p.unit_price*p.amount) AS costs
FROM FamilyMembers fm
JOIN Payments p
 ON fm.member_id = p.family_member
WHERE EXTRACT(YEAR FROM p.date) = 2005
GROUP BY fm.member_id, fm.member_name, fm.status
ORDER BY costs DESC;
