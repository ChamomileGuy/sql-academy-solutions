# Task #55: Delete companies with the fewest flights

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/55)

**Difficulty:** medium

## Description

Delete the companies that made the least number of flights.

## Expected fields

`percent`

## Solution

```sql
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
```
