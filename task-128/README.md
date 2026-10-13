# Task #128: Create index on price

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/128)

**Difficulty:** medium

## Description

Create indexidx_priceon thepricecolumn of theRoomstable.

## Expected fields

`emp_name`, `task_count`

## Solution

```sql
CREATE INDEX idx_price
 ON Rooms(price);
```
