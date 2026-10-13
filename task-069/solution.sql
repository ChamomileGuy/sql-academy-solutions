SELECT 
 r.owner_id, 
 COALESCE(SUM(res.total), 0) AS total_earn
FROM Rooms r
LEFT JOIN Reservations res
 ON r.id = res.room_id
GROUP BY r.owner_id;
