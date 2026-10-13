# Task #79: Price with 10% discount

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/79)

**Difficulty:** medium

## Description

Output the fields id, home_type, price for all residential units from the Rooms table. If the room has a TV and Internet at the same time, then display the price in the price field, applying a 10% discount.

## Expected fields

`id`, `home_type`, `price`

## Solution

```sql
SELECT 
 id, 
 home_type,
 CASE 
  WHEN has_tv AND has_internet 
   THEN price * 0.9 
  ELSE price 
 END
FROM Rooms;
```
