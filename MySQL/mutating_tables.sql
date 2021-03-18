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

-- Special example on when a field value may be missing
INSERT INTO student(name) VALUES('Claire');

-- One SQL statement to set the 'Biology' major to 'Bio'
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

-- One SQL statement to set the 4th student's major to 'Comp Sci'
UPDATE student
SET major = 'Comp Sci'
WHERE student_id = 4;

-- One SQL statement to update major to 'Biochemistry' where major is 'Bio' or 'Sociology' 
UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Sociology';

-- One SQL statement to replace a student with another student by id
UPDATE student
SET name = 'Tom', major = 'Undecided'
WHERE student_id = 1;

-- One SQL statement to delete a student by id
DELETE FROM student
WHERE student_id = 5;

-- One SQL statement to delete a student conditionally
DELETE FROM student
WHERE name = 'Tom' AND major = 'Undecided';

-- Delete everything from a table
DELETE FROM student;
