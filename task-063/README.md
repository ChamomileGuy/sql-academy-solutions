# Task #63: Sorting by student names

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/63)

**Difficulty:** medium

## Description

Print the sorted list (in ascending order) of students' lastnames and firstnames in the form Surname.F.

## Expected fields

`name`

## Solution

```sql
SELECT 
 last_name || '.' || SUBSTRING(first_name FROM 1 FOR 1
        ) || '.' AS name
FROM Student
ORDER BY last_name, first_name;
```
