CREATE DATABASE CompanyDB;
CREATE TABLE Employee (
   EmpID INT PRIMARY KEY,
   Name VARCHAR (30),
   Department VARCHAR (30),
   Salary DECIMAL (10,2),
);
CREATE LOGIN JohnLogin WITH PASSWORD = 'John@123';
CREATE USER JohnUser FOR LOGIN JohnLogin;
GO
GRANT SELECT, INSERT, UPDATE
ON Employee 
TO Johnuser
GO
EXEC sp_helprotect @username = 'JohnUser';
REVOKE INSERT, UPDATE
ON Employees
FROM JohnUser;
GO





