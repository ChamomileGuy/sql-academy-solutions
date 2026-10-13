# Task #25: Goods not purchased in 2005

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/25)

**Difficulty:** easy

## Description

Determine which products were not purchased in 2005

## Expected fields

`good_name`

## Solution

```sql
SELECT good_name
FROM Goods
WHERE good_id NOT IN (
 SELECT good 
 FROM Payments
 WHERE EXTRACT(YEAR FROM date) = 2005
);

/*
SELECT g.good_name
FROM Goods g
LEFT JOIN Payments p
    ON g.good_id = p.good
    AND EXTRACT(YEAR FROM p.date) = 2005
WHERE p.payment_id IS NULL;
*/
```
