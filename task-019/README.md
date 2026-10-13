# Task #19: Who bought potatoes

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/19)

**Difficulty:** easy

## Description

Determine which family member bought potatoes (potato)

## Expected fields

`status`

## Solution

```sql
SELECT DISTINCT fm.status
FROM FamilyMembers fm
JOIN Payments p
 ON fm.member_id = p.family_member
JOIN Goods g
 ON g.good_id = p.good
WHERE g.good_name = 'potato';
```
