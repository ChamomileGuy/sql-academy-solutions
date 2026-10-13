# Task #52: Add product type "auto"

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/52)

**Difficulty:** medium

## Description

Add to the list of product types (GoodTypes) a new type of "auto".

## Expected fields

`percent`

## Solution

```sql
INSERT INTO GoodTypes (good_type_id, good_type_name)
SELECT 
 MAX(good_type_id) + 1,
 'auto'
FROM GoodTypes;
```
