SELECT DISTINCT fm.status
FROM FamilyMembers fm
JOIN Payments p
 ON fm.member_id = p.family_member
JOIN Goods g
 ON g.good_id = p.good
WHERE g.good_name = 'potato';
