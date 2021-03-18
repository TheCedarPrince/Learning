-- Select database to use
USE learning;

-- Example on how to create a table with specific columns
CREATE TABLE student (
	student_id INT PRIMARY KEY,
	name VARCHAR(20),
	major VARCHAR(20)
);

-- How to insert information into a table 
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

-- Special example on when a field value may be missing
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
