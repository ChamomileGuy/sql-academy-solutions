SELECT 
 app.name AS application_name, 
 ROUND(AVG(logs.response_time_ms), 2) AS avg_ms 
FROM logs
JOIN applications app
 ON app.application_id = logs.application_id
GROUP BY app.name
ORDER BY avg_ms ASC;
