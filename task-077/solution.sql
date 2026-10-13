CREATE OR REPLACE VIEW People AS 

SELECT 
 first_name,
 last_name
FROM Student

UNION 

SELECT
 first_name,
 last_name
FROM Teacher;
