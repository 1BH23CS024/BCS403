-- Create table Employee with attributes: Id, Name, Job, Salary
CREATE TABLE Employee (
    Id NUMBER,
    Name VARCHAR2(50),
    Job VARCHAR2(50),
    Salary NUMBER,
);

-- Insert 3 records
INSERT INTO Employee VALUES
(1, 'Adam', 'Manager', 5000),
(2, 'Ben', 'Developer', 4000),
(3, 'Charlie', 'Analyst', 4500);
SELECT * FROM Employee;

-- Use ROLLBACK
ROLLBACK;
SELECT * FROM Employee;

-- Add PRIMARY KEY and NOT NULL constraints
ALTER TABLE Employee ADD CONSTRAINT PK_Employee PRIMARY KEY (Emp_No)
MODIFY (
    Name VARCHAR2(50) CONSTRAINT NN_Name NOT NULL,
    Job VARCHAR2(50) CONSTRAINT NN_Job NOT NULL,
    Salary NUMBER CONSTRAINT NN_Salary NOT NULL
);

-- Try to insert NULL value to a NOT NULL attribute
INSERT INTO Employee VALUES (4, NULL, 'Tester', 3000);
