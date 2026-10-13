SELECT 
 EXTRACT(
  YEAR FROM MAX(AGE(NOW(), Student.birthday))
 ) AS max_year
FROM Student
JOIN Student_in_class
 ON Student.id = Student_in_class.student
JOIN Class
 ON Class.id = Student_in_class.class
WHERE Class.name LIKE '10%';
