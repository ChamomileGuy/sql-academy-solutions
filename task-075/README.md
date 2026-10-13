# Task #75: Students born in May

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/75)

**Difficulty:** medium

## Description

Display the last name, first name and date of birth of students who were born in May.

## Expected fields

`last_name`, `first_name`, `birthday`

## Solution

```sql
SELECT 
 last_name, 
 first_name, 
 birthday
FROM Student
WHERE EXTRACT(MONTH FROM birthday) = 5;
```
