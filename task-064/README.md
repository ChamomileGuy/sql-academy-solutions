# Task #64: Number of bookings by month

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/64)

**Difficulty:** medium

## Description

Display the number of reservations for each month of each year that had at least 1 reservation. Sort the result in ascending order of reservation date.

## Expected fields

`year`, `month`, `amount`

## Solution

```sql
SELECT 
 EXTRACT(YEAR FROM start_date) AS year,
 EXTRACT(MONTH FROM start_date) AS month,
 COUNT(*) AS amount
FROM Reservations
GROUP BY year, month
ORDER BY year ASC, month ASC;
```
