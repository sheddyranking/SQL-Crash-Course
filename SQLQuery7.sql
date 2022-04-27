
 -- Create new column and filter

 SELECT SubTotal, TaxAmt, SubTotal + TaxAmt AS SubTotalTaxAmt
 FROM Purchasing.PurchaseOrderHeader
 WHERE SubTotal + TaxAmt > 500; 




-- Filtering

SELECT BusinessEntityID, JobTitle
FROM HumanResources.Employee
WHERE BusinessEntityID <= 50
-- WHERE JobTitle = 'Research and Development Manager';



-- CONCAT THHREE NAMES IN ONE TABLE

--SELECT FirstName, MiddleName, LastName, FirstName + ' '+ MiddleName + ' ' + LastName AS Fullame 
--FROM Person.Person;

SELECT FirstName, MiddleName, LastName
FROM Person.Person
-- WHERE MiddleName IS NULL;
WHERE MiddleName IS NOT NULL;


SELECT *
FROM HumanResources.Employee
WHERE BusinessEntityID BETWEEN 1 AND 50;

--WHERE BusinessEntityID IN (1,5,10,15);
--WHERE JobTitle IN ('Design Engineer','Research and Development Manager');
--WHERE JobTitle = 'Design Engineer' or JobTitle = 'Research and Development Manager';
--WHERE MaritalStatus ='S' AND Gender = 'F';


--FROM Person.StateProvince

-- Return name staring with A.
--WHERE NAME LIKE 'A%'

-- Return names ending with A.
--WHERE NAME LIKE '%A';

-- return the lenth of specified by underscore.
--WHERE NAME LIKE 'A___';


SELECT City,PostalCode
FROM Person.Address
ORDER BY PostalCode DESC;


SELECT FirstName, LastName, MiddleName
FROM Person.Person
WHERE MiddleName IS NOT NULL
ORDER BY FirstName DESC,LastName ASC;



--sales schema

SELECT SalesOrderID, UnitPrice
FROM Sales.SalesOrderDetail;

--Aggre.(Grouping the sum of uniprice according to there salesoOrdrID.)
SELECT SalesOrderID, SUM(UnitPrice) AS TotalUnitPricePersales
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID;

--Aggre.(Grouping the AVG of uniprice according to there salesoOrdrID.)
SELECT SalesOrderID, AVG(UnitPrice) AS AVGUnitPricePersales
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID;



--Aggre.(Grouping the COUNT of uniprice according to there salesoOrdrID.)
SELECT SalesOrderID, COUNT(UnitPrice) AS COUNTUnitPricePersales
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID;



--Aggre.(Grouping the MAX/MIIN of uniprice according to there salesoOrdrID.)
SELECT SalesOrderID, MAX(UnitPrice) AS MAXUnitPricePersales
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID;


-- CONCAT FUCNTION.

SELECT FirstName, MiddleName, LastName,
	CONCAT(FirstName, ' ', MiddleName ,' ',LastName) AS Fullame
FROM Person.Person;


--lEN FUNCTION
SELECT FirstName, LEN(FirstName)	 
FROM Person.Person;

-- RIGHT/LEFT EXTRACT FUCNTION. 
SELECT FirstName, RIGHT(FirstName,3) AS Extract3CharFromRight	 
FROM Person.Person;


--SUBSTRING FUNCTION(extract 3 after length of 4)
SELECT FirstName, SUBSTRING(FirstName,3,4) AS ExtractSubstring	 
FROM Person.Person;


-- DATE FUCNTION

SELECT SalesOrderID, OrderDate, DAY(OrderDate) AS DAY
FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, OrderDate, MONTH(OrderDate) AS MONTHS
FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, OrderDate, YEAR(OrderDate) AS YEARS
FROM Sales.SalesOrderHeader;

SELECT CURRENT_TIMESTAMP;

-- WHERE clause replace with  HAVING when it is not a subquery
SELECT SalesOrderID, SUM(UnitPrice) AS TotalUnitPricePersales
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING  SUM(UnitPrice) > 1000
 


--Order of selection if all this function are to be used together. 
SELECT SalesOrderID, SUM(UnitPrice) AS TotalUnitPricePersales
FROM Sales.SalesOrderDetail
WHERE SalesOrderID > 50000
GROUP BY SalesOrderID
HAVING  SUM(UnitPrice) > 1000
ORDER BY SalesOrderID DESC;


-- Selecting from a Subquery;

SELECT PurchaseOrderID, EmployeeID FROM Purchasing.PurchaseOrderHeader
WHERE PurchaseOrderID IN
(
	SELECT PurchaseOrderID FROM Purchasing.PurchaseOrderDetail WHERE PurchaseOrderDetailID > 5 
)


--UNION (Remove Duplicates)

SELECT BusinessEntityID FROM HumanResources.Employee
	UNION
SELECT BusinessEntityID FROM Person.Person
	UNION
SELECT CustomerID FROM Sales.Customer



--UNION ALL (Doesnt Remove Duplicates)

SELECT BusinessEntityID FROM HumanResources.Employee
	UNION ALL
SELECT BusinessEntityID FROM Person.Person
	UNION ALL
SELECT CustomerID FROM Sales.Customer
 


-- JOIN/INNER JOIN

SELECT pod.PurchaseOrderID, pod.PurchaseOrderDetailID,poh.OrderDate 
FROM Purchasing.PurchaseOrderDetail pod
	INNER JOIN
Purchasing.PurchaseOrderHeader poh
ON pod.PurchaseOrderID = poh.PurchaseOrderID


-- LEFT JOIN(Returns Values From Right table if there's a Match and Return Null Valeus on the Right Table if there's no match)

SELECT * FROM Person.Person
SELECT * FROM Person.BusinessEntityAddress;

SELECT p.BusinessEntityID, p.FirstName, p.lastName , bea.BusinessEntityID, bea.AddressID
FROM Person.Person p 
	LEFT JOIN
Person.BusinessEntityAddress bea
ON p.BusinessEntityID = bea.BusinessEntityID

-- RIGHT JOIN(Returns Values From Left table if there's a Match and Return Null Valeus on the Left Table if there's no match)

SELECT * FROM Person.Person
SELECT * FROM Person.BusinessEntityAddress;

SELECT p.BusinessEntityID, p.FirstName, p.lastName , bea.BusinessEntityID, bea.AddressID
FROM Person.Person p 
	RIGHT JOIN
Person.BusinessEntityAddress bea
ON p.BusinessEntityID = bea.BusinessEntityID

--FULL OUTER JOIN (is a combination of RIGHT JOIN AND LEFT JOIN).

SELECT p.BusinessEntityID, p.FirstName, p.lastName , bea.BusinessEntityID, bea.AddressID
FROM Person.Person p 
	 FULL OUTER JOIN 
Person.BusinessEntityAddress bea
ON p.BusinessEntityID = bea.BusinessEntityID



