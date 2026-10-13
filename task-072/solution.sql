SELECT 
 room_id,
 CEIL(AVG(price)) AS avg_price
FROM Reservations
GROUP BY room_id;
