create database task;
use task;
-- Step 1: Create the `Employees` table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT
);

-- Step 2: Insert data into the `Employees` table
INSERT INTO Employees (EmployeeID, Name, DepartmentID)
VALUES 
    (1, 'Alice', 101),
    (2, 'Bob', 102),
    (3, 'Charlie', NULL),
    (4, 'David', 104);

-- Step 3: Create the `Departments` table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Step 4: Insert data into the `Departments` table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES 
    (101, 'HR'),
    (102, 'IT'),
    (103, 'Finance'),
    (104, 'Admin');
-- Showing tables
select * from Employees; 
select * from Departments;
-- Step 5: Perform INNER JOIN
SELECT e.EmployeeID, e.Name, e.DepartmentID, d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Step 6: Perform LEFT JOIN
SELECT e.EmployeeID, e.Name, e.DepartmentID, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Step 7: Perform RIGHT JOIN
SELECT e.EmployeeID, e.Name, e.DepartmentID, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Step 8: Perform FULL OUTER JOIN (Note: Some databases like MySQL don't support FULL OUTER JOIN directly)
SELECT e.EmployeeID, e.Name, e.DepartmentID, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
UNION
SELECT e.EmployeeID, e.Name, e.DepartmentID, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;
