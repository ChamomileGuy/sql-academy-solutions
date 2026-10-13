# Task #164: Average Response Time per Application

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/164)

**Difficulty:** medium

## Description

The Dynatrace platform monitors application response times. Thelogstable storesresponse_time_ms(milliseconds) andapplication_idfor every request.Write a query that returnsapplication_name(fromapplications.name) andavg_ms— the average response
time, rounded to two decimals. Sort the result byavg_msascending.

## Expected fields

`application_name`, `avg_ms`

## Solution

```sql
SELECT 
 app.name AS application_name, 
 ROUND(AVG(logs.response_time_ms), 2) AS avg_ms 
FROM logs
JOIN applications app
 ON app.application_id = logs.application_id
GROUP BY app.name
ORDER BY avg_ms ASC;
```
