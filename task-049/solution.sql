SELECT ROUND(
  100.0 * (
   SELECT COUNT(*)
   FROM Class
   JOIN Student_in_class
    ON Class.id = Student_in_class.class
   WHERE Class.name LIKE '10 A'
  )
  / COUNT(*)
     , 4
 ) AS percent
FROM Student_in_class;
