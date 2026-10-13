# Task #145: Composite index with sorting

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/145)

**Difficulty:** easy

## Description

Create indexidx_lesson_date_classroom_descon theLessonstable, including thelesson_date(ascending) andclassroom(descending) columns.

## Expected fields



## Solution

```sql
CREATE INDEX idx_lesson_date_classroom_desc
 ON Lessons(lesson_date ASC, classroom DESC);
```
