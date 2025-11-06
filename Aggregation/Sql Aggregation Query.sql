Create Database SportsEventDb;
Create Table Players(
   PlayerID INT Primary Key,
   PlayerName VARCHAR(100),
   GameName VARCHAR(100),
   Score INT,
   City VARCHAR (100)
);
Insert into Players ( PlayerID , PlayerName , GameName , Score , City)
Values
( 1 , 'Rahul' , 'Badminton' , 100 , ' Delhi'),
( 2 , 'Aman' , 'Valleyball' , 200 , ' Mumbai'),
( 3 , 'Balu' , ' Football' ,  500 , ' Chennai'),
( 4 , 'Krishna', ' Skating',  700 , 'Banglore'),
( 5 , 'Naveen' , 'Cricket' , 1000 , 'Kanigiri'),
( 6 , 'Vamsi' , ' Running race' , 1500 , 'PC' ),
( 7 , 'Sandeep', 'Cricket', 1700 , 'Kanigiri'),
( 8 , 'Balu' , 'Football', 2000, ' Banglore');
select sum(score) from players where City = 'Kanigiri';
select Avg(score) from players where PlayerName = 'Balu';
select min(score) from players where GameName = 'Cricket';
select max(score) from players;
select* from players where score > 1000;
select GameName
from players
Group by GameName
Order by Avg(score) DESC;


