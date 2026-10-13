SELECT u.name,
  SUM(r.total) AS total_spent
FROM Users u
JOIN Reservations r
 ON r.user_id = u.id
GROUP BY u.id, u.name;
