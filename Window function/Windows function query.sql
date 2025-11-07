Create database companDB
Create table sale ( 
   saleID INT Primary key,
   salername VARCHAR(50),
   region VARCHAR(50),
   saleamount INT
);
Insert into sale ( saleID , salername , region , saleamount)
Values
( 1 , 'Aman' , 'Ananthapur' , 1000),
( 2 , 'Balu' , 'Belandur' , 3000),
( 3 , 'Komali' , 'Kolkata' , 5000),
( 4 , 'Daris' , 'Duvvada', 7000),
( 5 , 'Gowthami' ,'Gurgaon',9000);
select salername , region , saleamount,
Rank() over (Partition by region Order by saleamount DESC)
from sale
select salername , region , saleamount,
DENSE_RANK() Over ( partition by region order by saleamount ASC)
from sale
select saleID , region , saleamount,
ROW_NUMBER() Over (Partition by region order by saleamount DESC) as ROWNUM
from sale
select saleID , region , saleamount,
NTILE(2) Over (Partition by region order by saleamount DESC) as NT
from sale
select saleID , region , saleamount,
LAG(saleamount) over ( Partition by region order by saleamount ASC) as Lag
from sale
select saleID , region , saleamount,
LEAD(saleamount) over (Partition by region order by saleamount DESC) as Nexthalf
from sale
select saleID , region , saleamount,
CUME_DIST() over ( partition by region order by saleamount DESC) as half 
from sale
select salername , region , saleamount,
PERCENT_RANK() over (partition by region order by saleamount DESC) as percentnum
from sale
select*from sale
