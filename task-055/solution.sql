DELETE FROM Company
WHERE id IN (

 SELECT company
 FROM Trip 
 GROUP BY company
 HAVING COUNT(*) = (
 
  SELECT MIN(cnt)
  FROM (
   SELECT 
    COUNT(*) AS cnt
   FROM Trip
   GROUP BY company
  ) AS min_trips
  
 )
 
);
