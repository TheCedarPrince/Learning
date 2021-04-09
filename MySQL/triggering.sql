-- Select database to use
USE learning;

-- Creating test table for triggers
CREATE TABLE trigger_test (
	message VARCHAR(100)
);

-- Creating a trigger that adds a new value into trigger test before employee insertion
DELIMITER //
CREATE
	TRIGGER my_trigger BEFORE INSERT
	ON employee
	FOR EACH ROW BEGIN
		INSERT INTO trigger_test VALUES('Added new employee');
	END//
DELIMITER ;

INSERT INTO employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

-- Trigger that inserts the new employee name into trigger_test
DELIMITER //
CREATE
	TRIGGER my_new_trigger BEFORE INSERT
	ON employee
	FOR EACH ROW BEGIN
		INSERT INTO trigger_test VALUES(NEW.first_name);
	END//
DELIMITER ;

INSERT INTO employee
VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);

-- Conditional trigger which adds information to trigger test
DELIMITER //
CREATE
	TRIGGER my_conditional_trigger BEFORE INSERT
	ON employee
	FOR EACH ROW BEGIN
		IF NEW.sex = 'M' THEN
			INSERT INTO trigger_test VALUES('Added male employee');
		ELSEIF NEW.sex = 'F' THEN
			INSERT INTO trigger_test VALUES('Added female employee');
		ELSE
			INSERT INTO trigger_test VALUES('Added other employee');
		END IF;
	END//
DELIMITER ;

INSERT INTO employee
VALUES(111, 'Pam', 'Beesly', '1988-02-19', 'F', 69000, 106, 3);
