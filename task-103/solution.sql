SELECT e.name
FROM Employee e
JOIN Employee chief
 ON chief.id = e.chief_id
WHERE e.salary > chief.salary;
