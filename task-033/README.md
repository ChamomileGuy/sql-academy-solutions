# Task #33: Average price of caviar

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/33)

**Difficulty:** easy

## Description

Find the average price of caviar based on the data stored in the Payments table. The database stores data on purchases of red caviar and black caviar. The query result should contain one line with the average price of all caviar ever bought.

## Expected fields

`cost`

## Solution

```sql
SELECT AVG(unit_price) AS cost
FROM Payments p
JOIN Goods g
 ON g.good_id = p.good
WHERE g.good_name ~ ' caviar$';
```
