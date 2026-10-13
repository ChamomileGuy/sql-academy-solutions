# Task #51: Add product "Cheese"

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/51)

**Difficulty:** medium

## Description

Add a product with the name "Cheese" and the type "food" to the list of goods (Goods).

## Expected fields

`percent`

## Solution

```sql
INSERT INTO Goods (good_id, good_name, type)
SELECT 
 MAX(good_id) + 1, 
 'Cheese', 
 (SELECT good_type_id
  FROM GoodTypes
  WHERE good_type_name = 'food'
 )
FROM Goods;
```
