SELECT 
 room_id,
 COUNT(*) AS count
FROM Reservations
GROUP BY room_id
HAVING COUNT(*) % 2 = 1;
