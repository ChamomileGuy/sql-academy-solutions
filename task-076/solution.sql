SELECT
 u.name,
 CASE
  WHEN r.owner_id IS NULL THEN 0
  ELSE 1
 END AS is_owner,
 CASE 
  WHEN res.id IS NULL THEN 0
  ELSE 1
 END AS is_tenant
FROM Users u
LEFT JOIN Rooms r
 ON u.id = r.owner_id
LEFT JOIN Reservations res
 ON u.id = res.user_id
GROUP BY u.id, u.name, is_owner, is_tenant;
