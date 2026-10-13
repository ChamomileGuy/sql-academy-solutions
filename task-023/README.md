# Task #23: Most expensive delicacy

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/23)

**Difficulty:** easy

## Description

Find the most expensive delicacy (delicacies) and print its price

## Expected fields

`good_name`, `unit_price`

## Solution

```sql
SELECT 
 g.good_name, 
 p.unit_price
FROM GoodTypes gt
JOIN Goods g
 ON gt.good_type_id = g.type
JOIN Payments p
 ON g.good_id = p.good
WHERE gt.good_type_name = 'delicacies'
ORDER BY unit_price DESC 
LIMIT 1;
```
