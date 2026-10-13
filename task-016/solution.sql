SELECT 
 p.id, 
 p.name, 
 COUNT(pt.passenger) AS count
FROM Passenger p
LEFT JOIN Pass_in_trip pt
 ON p.id = pt.passenger
GROUP BY p.id
HAVING COUNT(pt.passenger) > 0
ORDER BY COUNT(pt.passenger) DESC, p.name ASC;
