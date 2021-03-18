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
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Mike', 'Computer Science');

-- Special example on when a field value may be missing
INSERT INTO student(name) VALUES('Claire');
