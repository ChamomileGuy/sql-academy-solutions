SELECT r.id,
  r.end_date,
  r.total
FROM Reservations r
WHERE r.end_date::date BETWEEN '2020-02-01' AND '2020-02-29';

/*
SELECT r.id,
    r.end_date,
    r.total
FROM Reservations r
WHERE r.end_date >= '2020-02-01' AND r.end_date < '2020-03-01'
*/
