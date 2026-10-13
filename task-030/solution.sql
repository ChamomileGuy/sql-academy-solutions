SELECT trip, COUNT(id) AS count
FROM Pass_in_trip
GROUP BY trip
ORDER BY count DESC;
