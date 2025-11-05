CREATE TABLE Accounts (
  AcNO INT PRIMARY KEY,
  HolderName VARCHAR(50),
  Balance DECIMAL (10,2),
);
INSERT INTO Accounts (AcNO , HolderName , Balance )
VALUES
( 101 , 'Yoga' , 5000),
( 104 , 'Satwika' , 7000);
COMMIT;
BEGIN TRANSACTION;
UPDATE Accounts 
SET Balance = Balance - 1000
WHERE AcNO = 101;
UPDATE Accounts
SET Balance = Balance + 1000
WHERE AcNO = 104;
SAVE TRANSACTION TransferDone;
UPDATE Accounts
SET Balance = Balance - 500
WHERE AcNO = 101;
ROLLBACK TRANSACTION TransferDone;
COMMIT;
SELECT*FROM Accounts







