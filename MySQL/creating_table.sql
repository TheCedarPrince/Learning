-- Example on how to create a database
CREATE DATABASE learning;

-- Select database to use
USE learning;

-- Example on how to create a table with specific columns
CREATE TABLE student (
	student_id INT PRIMARY KEY,
	name VARCHAR(20),
	major VARCHAR(20)
);

-- How to add a column to a pre-existing table
ALTER TABLE student ADD gpa DECIMAL(3, 2);

-- See what is inside of a table
DESCRIBE student;

-- How to drop a column from a pre-existing table
ALTER TABLE student DROP COLUMN gpa;

-- How to drop a table from an existing database
DROP TABLE student;
