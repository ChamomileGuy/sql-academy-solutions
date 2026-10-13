SELECT c.name
FROM Company c
JOIN Trip t
 ON c.id = t.company
WHERE town_from = 'Vladivostok';
