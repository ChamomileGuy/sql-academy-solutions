SELECT 
 home_type, 
 address, 
 COALESCE(SUM(res.total/res.price), 0) AS days, 
 COALESCE(SUM(res.total), 0) AS total_fee
FROM Rooms r
LEFT JOIN Reservations res
 ON r.id = res.room_id
WHERE
 has_tv IS TRUE 
 AND has_internet IS TRUE 
 AND has_kitchen IS TRUE 
 AND has_air_con IS TRUE 
GROUP BY home_type, address;
