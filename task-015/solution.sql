SELECT 
 p.id,
 t.time_in
FROM Passenger p
JOIN Pass_in_trip pit
 ON p.id = pit.passenger
JOIN Trip t
 ON t.id = pit.trip
WHERE p.name = 'Steve Martin'
 AND t.town_to = 'London';
