
--CREATING DATABASE.

CREATE DATABASE Covid19;



--Creating Table.
CREATE TABLE CovidStats
(covidID INT IDENTITY(1,3),
 covidDate datetime,
 dailyConfirmedCases INT,
 dialyDeaths smallint,
 country varchar(25),
 covidFlag bit,
 totalLoss money
);

--Creating PrimaryKeys.
CREATE TABLE ItemHeader
(
itemID INT PRIMARY KEY,
itemName VARCHAR(50) UNIQUE,
itemOrderDate datetime NOT NULL,
itemShipDate datetime NOT NULL,
itemAmount MONEY
);


--Creating Two Keys and Foriegn Keys.

CREATE TABLE ItemDetail
(
itemID INT,
itemDetailID INT,
itemDueDate datetime NOT NULL,
itemOrderQty smallint NOT NULL,
itemRecievedQty smallint NOT NULL,
itemShipDate datetime,
itemAmount MONEY,
CONSTRAINT ItemDetailPK PRIMARY KEY (itemID,itemDetailID), --creating two keys
CONSTRAINT ItemDetailFK FOREIGN KEY (itemID) REFERENCES ItemHeader (itemID) --Foreign key
);


--Selecting from the created tables.
SELECT * FROM dbo.CovidStats;

--Inserting into the table.
INSERT INTO dbo.CovidStats VALUES('2022/4/27', 5500, 10, 'USA', 1, 500000); --first way

INSERT INTO dbo.CovidStats(covidDate,country) VALUES('2022/5/23','Niger'); --second way.

INSERT INTO dbo.CovidStats(covidDate,dailyConfirmedCases,dialyDeaths,country,covidFlag,totalLoss) 
VALUES
('2022/5/23',40,20,'Niger',1,40000),
('2022/6/23',50,30,'Brazil',1,50000),
('2022/7/23',60,40,'Russia',0,60000);--third way

--UPATE statement (initally the dates where 1900-01-01)

UPDATE dbo.CovidStats SET covidDate = '2022/2/2' WHERE covidID = 4;

SELECT * FROM dbo.CovidStats;

UPDATE dbo.CovidStats SET covidDate = '2022/2/2' WHERE covidID = 13;



-- ALTER  STATEMENT

ALTER TABLE CovidStats --Adding column
ADD Continent char(12);

ALTER TABLE CovidStats -- updating column dataType.
ALTER Column Continent varchar(15);

ALTER TABLE CovidStats --Droping Column
DROP Column Continent;


--DELETE STATEMENT.

DELETE FROM CovidStats WHERE country = 'Brazil' AND covidFlag = 1; --Deleting a single record.

DELETE TOP (2) FROM CovidStats; --Delete specified top no. of records.

DELETE TOP (10) PERCENT FROM CovidStats -- Deleting top 10 percent.

DELETE * FROM CovidStats; --Deleting all records in the table.

DROP TABLE CovidStats; -- Deleting  the whole Table.







