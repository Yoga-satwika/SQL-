CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,               
    DeptName VARCHAR(50) UNIQUE,          
    Location VARCHAR(50) NOT NULL          
);
DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,                 
    EmpName VARCHAR(50) NOT NULL,          
    Age INT CHECK (Age >= 18),             
    Salary DECIMAL(10,2) CHECK (Salary > 0), 
    DeptID INT,                            
    CONSTRAINT FK_DeptID FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
                                            
);
INSERT INTO Departments (DeptID, DeptName, Location)
VALUES 
(1, 'HR', 'Hyderabad'),
(2, 'IT', 'Bangalore'),
(3, 'Finance', 'Mumbai');
INSERT INTO Employee ( EmpID, EmpName, Age, Salary, DeptID)
VALUES
(101, 'Ravi', 25, 40000, 2),
(102, 'Sneha', 30, 50000, 1),
(103, 'Arjun', 22, 35000, 3);
SELECT*FROM Departments;
SELECT*FROM Employee



