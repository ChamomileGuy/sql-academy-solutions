SELECT COUNT(*) AS count
FROM Teacher t
JOIN Schedule s
 ON t.id = s.teacher
WHERE t.last_name = 'Krauze'
 AND date = '2019-08-30';
