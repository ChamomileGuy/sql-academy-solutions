SELECT DISTINCT c.name
FROM Teacher t
JOIN Schedule s
 ON t.id = s.teacher
JOIN Class c
 ON c.id = s.class
WHERE t.last_name = 'Krauze';
