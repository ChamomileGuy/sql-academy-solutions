# Task #144: Composite index on home_type and price

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/144)

**Difficulty:** easy

## Description

Create indexidx_type_priceon thehome_typeandpricecolumns of theRoomstable.

## Expected fields



## Solution

```sql
CREATE INDEX idx_type_price
 ON Rooms(home_type, price);
```
