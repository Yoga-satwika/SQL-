Create Database TravlbookingDb;
Create table TripRecords (
    TripID INT PRIMARY KEY,
    TravelerName VARCHAR(50),
    Destination VARCHAR(50),
    TicketPrice INT,
    TravelDate DATE
);
Insert into TripRecords (TripID, TravelerName, Destination, TicketPrice, TravelDate)
VALUES
(1, 'Aarav', 'Singapore', 45000, '2025-03-12'),
(2, 'Meera', 'Dubai', 52000, '2025-04-20'),
(3, 'Rohan', 'Bali', 38000, '2025-02-10'),
(4, 'Isha', 'Maldives', 60000, '2025-05-05'),
(5, 'Kiran', 'Thailand', 42000, '2025-03-30');
Create Procedure gethighpricedtrips
AS
Begin
     select TravelerName , Destination , Ticketprice
     from TripRecords
     where TicketPrice> 500;
END;
Exec gethighpricedtrips;
Alter Procedure gethighpricedtrips
AS
BEGIN
    SELECT TravelerName, Destination, TicketPrice, TravelDate
    FROM TripRecords
    WHERE TicketPrice >= 50000
    ORDER BY TicketPrice DESC;
END;
EXEC getHighPricedtrips;
Create Procedure  gettripsbyDestination
    @Place VARCHAR(50)
AS
BEGIN
    select TravelerName, TicketPrice, TravelDate
    from TripRecords
    where Destination = @Place;
END;
EXEC GetTripsByDestination @Place = 'Bali';
DROP PROCEDURE GetTripsByDestination;
DROP PROCEDURE GetHighPricedTrips;

select*from TripRecords




