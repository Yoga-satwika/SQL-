CREATE DATABASE ShoppingDB;
CREATE TABLE Customer (
  CustID INT PRIMARY KEY,
  CustName VARCHAR (50),
  City VARCHAR (50),
);
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  Product VARCHAR(50),
  Amount INT,
  CustID INT,
);
INSERT INTO Customer ( CustID , CustName , City)
VALUES
( 1 , 'Yoga' , 'Kanigiri'),
( 2 , 'satwi' , 'Ongole'),
( 3 , 'Laddu' , 'Guntur');
INSERT INTO Orders ( OrderID , Product , Amount , CustID)
VALUES
( 201 , 'Laptop' , 50000 , 1),
( 202 , 'Mobile' , 22000 , 2),
( 203 , 'Tablet' , 30000 , 3),
( 204 , 'Headset' , 15000 , NULL);
SELECT CustName, Product, Amount
FROM Customer
INNER JOIN Orders
ON Customer.CustID = Orders.CustID;
SELECT CustName, Product, Amount
FROM Customer
LEFT JOIN Orders
ON Customer.CustID = Orders.CustID;
UPDATE Orders SET CustID = 1 WHERE OrderID = 201;
UPDATE Orders SET CustID = 2 WHERE OrderID = 202;
UPDATE Orders SET CustID = 3 WHERE OrderID = 203;
UPDATE Orders SET CustID = NULL WHERE OrderID = 204;
SELECT CustName, Product, Amount
FROM Customer
RIGHT JOIN Orders
ON Customer.CustID = Orders.CustID;
SELECT CustName, Product, Amount
FROM Customer
FULL JOIN Orders
ON Customer.CustID = Orders.CustID;
SELECT CustName, Product
FROM Customer
CROSS JOIN Orders;








