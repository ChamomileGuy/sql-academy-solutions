SELECT r.*
FROM Rooms r
LEFT JOIN Reservations res
 ON r.id = res.room_id
WHERE EXTRACT(WEEK FROM res.start_date) = 12
 AND EXTRACT(YEAR FROM res.start_date) = 2020
GROUP BY r.id;
