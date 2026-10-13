SELECT 
 id,
 CASE
  WHEN has_internet THEN 'YES'
  ELSE 'NO'
 END AS has_internet
FROM Rooms;
