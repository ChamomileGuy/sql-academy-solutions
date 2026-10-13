SELECT DISTINCT ON (r.room_id)
 r.room_id,
 u.name,
 r.end_date
FROM Reservations r
JOIN Users u ON u.id = r.user_id
ORDER BY r.room_id, r.end_date DESC, r.id DESC;
