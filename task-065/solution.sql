SELECT 
 room_id,
 FLOOR(AVG(rating)) AS rating
FROM Reviews
JOIN Reservations 
 ON Reservations.id = Reviews.reservation_id
GROUP BY room_id
ORDER BY room_id;
