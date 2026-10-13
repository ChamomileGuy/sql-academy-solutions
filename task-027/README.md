# Task #27: Spending by product group in 2005

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/27)

**Difficulty:** easy

## Description

Find out how much was spent on each of the product groups in 2005. Print the name of the group and the total costs spent on it. If there was no spending on a particular product group, i.e., goods from that group were not bought in 2005, do not include it in the report.

## Expected fields

`good_type_name`, `costs`

## Solution

```sql
SELECT 
 gt.good_type_name,
 SUM(unit_price * amount) AS costs
FROM GoodTypes gt
JOIN Goods g
 ON gt.good_type_id = g.type
JOIN Payments p
 ON g.good_id = p.good
WHERE EXTRACT(YEAR FROM p.date) = 2005
GROUP BY gt.good_type_id, gt.good_type_name 
ORDER BY costs DESC;
```
