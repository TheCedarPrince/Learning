-- Select database to use
USE learning;

INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

-- Inner joining together tables based on employee and manager id
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

-- Left joining together tables based on employee and manager id
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- Right joining together tables based on employee and manager id
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;
