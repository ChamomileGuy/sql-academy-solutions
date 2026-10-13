# Task #20: Spending on entertainment

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/20)

**Difficulty:** easy

## Description

Determine which family members spent money on entertainment and how much each spent. Include only family members whose total entertainment expenses are greater than 0 in the result. Output the family status, name, and amount.

## Expected fields

`status`, `member_name`, `costs`

## Solution

```sql
SELECT 
 fm.status, 
 fm.member_name,
 SUM(p.amount*p.unit_price) AS costs
FROM FamilyMembers fm
JOIN Payments p
 ON fm.member_id = p.family_member
JOIN Goods g
 ON g.good_id = p.good
JOIN GoodTypes gt
 ON gt.good_type_id = g.type
WHERE gt.good_type_name = 'entertainment'
GROUP BY fm.member_id;
```
