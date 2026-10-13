# Task #204: The February report lost a booking

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/204)

**Difficulty:** medium

## Description

Accounting is closing February 2020: they need every booking whose check-out
(end_date) fell in February.The author of the query even remembered that 2020 is a leap year, but the
report total still doesn't match the statement: one booking is missing,
although it is in the table.Outputid(booking id),end_date(check-out date and time) andtotal(booking amount).

## Expected fields

`id`, `end_date`, `total`

## Solution

```sql
SELECT r.id,
  r.end_date,
  r.total
FROM Reservations r
WHERE r.end_date::date BETWEEN '2020-02-01' AND '2020-02-29';

/*
SELECT r.id,
    r.end_date,
    r.total
FROM Reservations r
WHERE r.end_date >= '2020-02-01' AND r.end_date < '2020-03-01'
*/
```
