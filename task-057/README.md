# Task #57: Reschedule for 30 minutes

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/57)

**Difficulty:** medium

## Description

Reschedule the schedule of all classes for 30 minutes. forward

## Expected fields

`percent`

## Solution

```sql
UPDATE Timepair
SET 
 start_pair = start_pair + '00:30:00',
 end_pair = end_pair + '00:30:00';
```
