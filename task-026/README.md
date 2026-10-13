# Task #26: Groups of goods not purchased in 2005

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/26)

**Difficulty:** easy

## Description

Identify groups of products that were not purchased in 2005

## Expected fields

`good_type_name`

## Solution

```sql
SELECT gt.good_type_name
FROM GoodTypes gt
WHERE NOT EXISTS (
 SELECT 1 
 FROM Goods g
 JOIN Payments p
  ON g.good_id = p.good
 WHERE gt.good_type_id = g.type
  AND EXTRACT(YEAR FROM p.date) = 2005
);

/*
SELECT gt.good_type_name
FROM GoodTypes gt
WHERE gt.good_type_id NOT IN (
    SELECT g.type 
    FROM Goods g
    JOIN Payments p
     ON g.good_id = p.good
    WHERE EXTRACT(YEAR FROM p.date) = 2005
);
*/
```
