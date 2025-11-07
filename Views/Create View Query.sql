Create Database StudentDB;
Create table school(
   studentID INT Primary Key,
   studentName VARCHAR(50),
   class VARCHAR (50),
   marks INT
);
Insert into school ( studentID , studentName , class ,marks )
values
( 1 , 'Archana' , 8 , 100),
( 2 , 'Bunny' , 9 , 200),
( 3 , 'Danny' , 10 , 700),
( 4 , 'Fatima' , 7 , 75);
select*from school
create view highscore as
select studentName, marks
from school
where marks > 100;
select*from highscore

