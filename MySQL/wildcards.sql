-- Select database to use
USE learning;

-- Find any clients who are LLCs
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- Find all schools
SELECT *
FROM client
WHERE client_name LIKE '%school%';

-- Find all employees born in October
SELECT *
FROM employee
WHERE birth_day LIKE '____-10___';
