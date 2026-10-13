# Task #18: The oldest person

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/18)

**Difficulty:** easy

## Description

Print the name of the oldest person. If there are several of them, then output them all.

## Expected fields

`member_name`

## Solution

```sql
SELECT member_name
FROM FamilyMembers
WHERE birthday = (SELECT MIN(birthday) FROM FamilyMembers
    );
```
