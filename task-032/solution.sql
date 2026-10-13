SELECT 
 FLOOR(AVG(EXTRACT(YEAR FROM AGE(CURRENT_DATE, 
        birthday)))) AS age
FROM FamilyMembers;
