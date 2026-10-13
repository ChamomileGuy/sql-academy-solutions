SELECT Trip.id AS id, COUNT(Pass_in_trip.passenger) AS 
    count
FROM Trip
LEFT JOIN Pass_in_trip
 ON Trip.id = Pass_in_trip.trip
GROUP BY Trip.id;
