# Task #49: Percentage of students in 10 A

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/49)

**Difficulty:** easy

## Description

What percentage of students study in the "10 A" class? Print the answer in the range from 0 to 100 rounded to four decimal places, for example, 96.0201.

## Expected fields

`percent`

## Solution

```sql
SELECT ROUND(
  100.0 * (
   SELECT COUNT(*)
   FROM Class
   JOIN Student_in_class
    ON Class.id = Student_in_class.class
   WHERE Class.name LIKE '10 A'
  )
  / COUNT(*)
     , 4
 ) AS percent
FROM Student_in_class;
```
