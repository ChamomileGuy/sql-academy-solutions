# Task #21: Products bought more than once

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/21)

**Difficulty:** easy

## Description

Identify products that have been purchased more than 1 time

## Expected fields

`good_name`

## Solution

```sql
SELECT g.good_name
FROM Goods g
JOIN Payments p
 ON g.good_id = p.good
GROUP BY g.good_id, g.good_name
HAVING COUNT(*) > 1
ORDER BY g.good_name;
```
