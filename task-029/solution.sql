SELECT DISTINCT p.name
FROM Passenger p
JOIN Pass_in_trip pit
 ON p.id = pit.passenger
JOIN Trip t
 ON t.id = pit.trip
WHERE t.town_to = 'Moscow'
 AND t.plane = 'TU-134'
ORDER BY p.name;
