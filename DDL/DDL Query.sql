CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FullName VARCHAR(50),
    Age INT,
    City VARCHAR(30)
);
INSERT INTO Students (StudentID, FullName, Age, City)
VALUES
(1, 'Ravi Kumar', 21, 'Hyderabad'),
(2, 'Sneha Reddy', 22, 'Chennai'),
(3, 'Kiran Das', 23, 'Bangalore');
ALTER TABLE Students
ADD Email VARCHAR(100);
ALTER TABLE Students
ALTER COLUMN FullName VARCHAR(80);
EXEC sp_rename 'Students.FullName', 'StudentName', 'COLUMN';
ALTER TABLE Students
DROP COLUMN City;
EXEC sp_rename 'Students', 'CollegeStudents';
TRUNCATE TABLE CollegeStudents;
DROP TABLE CollegeStudents;
SELECT*FROM Students