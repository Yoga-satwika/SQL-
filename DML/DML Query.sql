CREATE TABLE Employees (
   EmployeeID INT PRIMARY KEY,
   Name VARCHAR (30),
   Age INT,
   City VARCHAR (30),
);
INSERT INTO Employees (EmployeeID, Name, Age, City)
VALUES
(1, 'Ravi', 22, 'Banglore'),
(2, 'Ram',  24, 'Delhi'),
(3, 'Yoga', 25, 'Kanigiri');
UPDATE Employees
SET City = 'Pune'
WHERE EmployeeID = '3'
DELETE FROM Employees
WHERE EmployeeID = '2'
SELECT*FROM Employees


