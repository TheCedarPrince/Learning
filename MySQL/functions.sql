-- Select database for connection
USE learning;

-- Finding the number of employees
SELECT COUNT(emp_id)
FROM employee;

-- Finding the average of all employees' salaries
SELECT AVG(salary)
FROM employee;

-- Summing together all of the employees' salaries
SELECT SUM(salary)
FROM employee;

-- Counting number of males and females present
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

-- Find the total sales per sales person
SELECT emp_id, SUM(total_sales)
FROM works_with
GROUP BY emp_id;
