SELECT 
 ROUND(
  100.0 * (SELECT COUNT(*) FROM (
   SELECT user_id FROM Reservations 
   UNION 
   SELECT r.owner_id 
   FROM Rooms r
   JOIN Reservations res ON r.id = res.room_id
  ) AS active_users) / (SELECT COUNT(*) FROM Users
            ), 
  2
 ) AS percent;
