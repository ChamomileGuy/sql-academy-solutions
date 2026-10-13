SELECT 
 id, 
 home_type,
 CASE 
  WHEN has_tv AND has_internet 
   THEN price * 0.9 
  ELSE price 
 END
FROM Rooms;
