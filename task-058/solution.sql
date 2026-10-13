INSERT INTO Reviews (id, reservation_id, rating)
SELECT 
 COUNT(*) + 1, 
 (
  SELECT res.id
  FROM Reservations res
  JOIN Users u 
   ON u.id = res.user_id
  JOIN Rooms r
   ON r.id = res.room_id
  WHERE u.name = 'George Clooney' 
   AND r.address = '11218, Friel Place, New 
                York'
 ),
 5
FROM Reviews;
