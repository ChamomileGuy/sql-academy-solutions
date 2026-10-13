SELECT 
 EXTRACT(YEAR FROM start_date) AS year,
 EXTRACT(MONTH FROM start_date) AS month,
 COUNT(*) AS amount
FROM Reservations
GROUP BY year, month
ORDER BY year ASC, month ASC;
