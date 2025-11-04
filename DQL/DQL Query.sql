CREATE DATABASE SchoolDB;
GO
CREATE TABLE Student(
   StdID INT PRIMARY KEY,
   Name VARCHAR (50),
   Class VARCHAR (50),
   Marks DECIMAL (10,2),
);
INSERT INTO Student (StdID , Name , Class , Marks)
VALUES
(1 , 'Ram' ,   1 , 20 ),
(2 , 'Yoga' ,  3 , 50),
(3 , 'Bhavya', 5 , 40),
(4 , 'Madhu' , 7 , 70);
GO
SELECT 
    COUNT(*) AS TotalStudent,
    SUM('Marks') AS TotalMarks,
    AVG('Marks') AS AverageMarks,
    MIN('Marks') AS LowestMarks,
    MAX('Marks') AS HighesMarks
FROM Student;
SELECT 
    Class,
    COUNT(*) AS TotalStudent,
    AVG('Marks') AS AverageMarks
FROM Student
GROUP BY Class;
SELECT 
    Class,
    AVG('Marks') AS AverageMarks
FROM Student
GROUP BY Class
HAVING AVG(Marks) > 50;
SELECT 
    Name, Class, Marks
FROM Student
ORDER BY Marks DESC;







   
