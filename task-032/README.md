# Task #32: Average age of people

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/32)

**Difficulty:** easy

## Description

Display the average age of people (in years) stored in the database. The result is rounded down to the nearest integer.

## Expected fields

`age`

## Solution

```sql
SELECT 
 FLOOR(AVG(EXTRACT(YEAR FROM AGE(CURRENT_DATE, 
        birthday)))) AS age
FROM FamilyMembers;
```
