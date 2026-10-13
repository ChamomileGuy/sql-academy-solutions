# Task #173: Monthly Active Users (MAU)

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/173)

**Difficulty:** medium

## Description

A user is considered active in a month if they made at least
one transaction of any type during that month.Write a query that returnsmth(month number) andmau— the number ofdistinctactive users in that
month. Sort bymth.

## Expected fields

`mth`, `mau`

## Solution

```sql
SELECT 
 EXTRACT(MONTH FROM transaction_at) as mth,
 COUNT(DISTINCT customer_id) AS mau
FROM transactions
GROUP BY mth
ORDER BY mth;
```
