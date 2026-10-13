SELECT Teacher.last_name
FROM Teacher
JOIN Schedule
 ON Teacher.id = Schedule.teacher
JOIN Subject
 ON Subject.id = Schedule.subject
WHERE Subject.name = 'Physical Culture'
ORDER BY Teacher.last_name;
