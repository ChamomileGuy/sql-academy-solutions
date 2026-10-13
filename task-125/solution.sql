SELECT b.title
FROM Books b
JOIN BookEditions be
 ON b.id = be.book_id
GROUP BY b.title
HAVING COUNT(*) > 5;
