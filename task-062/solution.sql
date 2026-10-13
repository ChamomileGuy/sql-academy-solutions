SELECT 
 SUBSTRING(email FROM '@.*?([^.]+\.(?:[^.]+))$') AS 
        domain, 
 COUNT(*) AS count
FROM Users
GROUP BY domain
ORDER BY count DESC, domain ASC;
