-- Select database to use
USE learning;

-- Get company use names
SELECT first_name AS 'Company Name'
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;
