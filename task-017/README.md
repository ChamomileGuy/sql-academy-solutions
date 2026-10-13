# Task #17: Family expenses in 2005

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/17)

**Difficulty:** easy

## Description

Determine how much each family member spent in 2005. In the resulting sample, do not output those family members who have not spent anything.

## Expected fields

`member_name`, `status`, `costs`

## Solution

```sql
SELECT 
 fm.member_name,
 fm.status,
 SUM(p.unit_price*p.amount) AS costs
FROM FamilyMembers fm
JOIN Payments p
 ON fm.member_id = p.family_member
WHERE EXTRACT(YEAR FROM p.date) = 2005
GROUP BY fm.member_id, fm.member_name, fm.status
ORDER BY costs DESC;
```
