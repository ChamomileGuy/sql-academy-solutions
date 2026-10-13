WITH RECURSIVE dates AS (

 SELECT 
  start_date,
  end_date
 FROM Reservations
 WHERE room_id = 1
 
 UNION ALL 
 
 SELECT
  (start_date + INTERVAL '1 day') ,
  end_date
 FROM dates
 WHERE start_date < end_date
)

SELECT DISTINCT DATE(start_date) AS day
FROM dates
ORDER BY day ASC;
