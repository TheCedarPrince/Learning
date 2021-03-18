-- Select database to use
USE learning;

-- Get everything from table and order by sex, then first, and then last name
SELECT *
FROM employee
ORDER BY sex, first_name, last_name;

-- Get first name and last name returned as forename and surname respectively
SELECT first_name AS forename, last_name AS surname 
FROM employee;

-- Return distinct branch ids from table
SELECT DISTINCT branch_id
FROM employee;
