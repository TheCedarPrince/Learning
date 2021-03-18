-- Select database to use
USE learning;

-- How to drop a table from an existing database
DROP TABLE student;

-- Example on how to create a table with specific columns
CREATE TABLE student (
	student_id INT AUTO_INCREMENT PRIMARY KEY, -- Auto increments primary key
	name VARCHAR(20) NOT NULL, -- Specifying the name to not be NULL
	-- major VARCHAR(20) UNIQUE -- Must be a unique value
	major VARCHAR(20) DEFAULT 'Undecided' -- If value is not defined, set def
);


-- How to insert information into a table 
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(name, major) VALUES('Jacob', 'Engineering');
INSERT INTO student(name, major) VALUES('Mike', 'Computer Science');
INSERT INTO student(name, major) VALUES('Jack', 'Biology');

-- Special example on when a field value may be missing
INSERT INTO student(name) VALUES('Claire');

-- Select everything from table
SELECT *
FROM student;

-- Select name and major from table in descending order based off name
SELECT name, major
FROM student
ORDER BY name DESC;

-- Select everything from a table and order it by major first, then student id
SELECT *
FROM student
ORDER BY major, student_id;

-- Select everything from a table, order it by name, but only return 2 rows
SELECT *
FROM student
ORDER BY name
LIMIT 2;

-- Select everything from a table, but only return Jacob's who are Engineering 
SELECT *
FROM student
WHERE major = 'Engineering' AND name = 'Jacob';

-- Select everything from a table, but do not return Biology 
SELECT *
FROM student
WHERE major <> 'Biology';

-- Select everything from a table, return only Jacob's and Mike's, and order it by name
SELECT *
FROM student
WHERE name IN ('Jacob', 'Mike')
ORDER BY name;
