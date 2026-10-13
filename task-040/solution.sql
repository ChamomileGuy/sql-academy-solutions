SELECT s.name AS subjects
FROM Teacher t
JOIN Schedule sch
 ON t.id = sch.teacher
JOIN Subject s
 ON s.id = sch.subject
WHERE t.last_name = 'Romashkin'
 AND t.first_name LIKE 'P%'
 AND t.middle_name LIKE 'P%'
ORDER BY subjects;
