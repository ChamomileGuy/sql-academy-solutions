# Task #147: Expand reservation date ranges

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/147)

**Difficulty:** medium

## Description

For the room withroom_id = 1, use theReservationstable to find every date covered by at least one reservation. Treat each reservation period as inclusive: fromstart_datethroughend_date. If a date appears in several reservations, include it in the result only once. Output the dates as separate rows in thedaycolumn and sort them in ascending order.For example, a reservation from 2018-10-09 to 2018-10-11 should add three dates to the result: 2018-10-09, 2018-10-10, and 2018-10-11.

## Expected fields



## Solution

```sql
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
```
