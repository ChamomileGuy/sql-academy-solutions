# Task #74: Internet availability in the room

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/74)

**Difficulty:** medium

## Description

Display housing identifiers and the presence of the Internet in the housing. If there is Internet in the rented housing, then print "YES", otherwise "NO".

## Expected fields

`id`, `has_internet`

## Solution

```sql
SELECT 
 id,
 CASE
  WHEN has_internet THEN 'YES'
  ELSE 'NO'
 END AS has_internet
FROM Rooms;
```
