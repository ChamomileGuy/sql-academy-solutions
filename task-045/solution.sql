SELECT classroom
FROM(
 SELECT 
  classroom, 
  COUNT(*) AS cnt,
  DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS 
            rnk
 FROM Schedule
 GROUP BY classroom 
)
WHERE rnk = 1;
