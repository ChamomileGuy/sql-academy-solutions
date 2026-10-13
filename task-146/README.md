# Task #146: Functional index on subject

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/146)

**Difficulty:** medium

## Description

Create indexidx_lower_subjecton theLessonstable usingLOWER(subject).

## Expected fields



## Solution

```sql
CREATE INDEX idx_lower_subject 
 ON Lessons(LOWER(subject));
```
