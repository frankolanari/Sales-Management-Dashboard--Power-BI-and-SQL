/****** Script for Customer table  ******/
SELECT 
    [CustomerKey],
  --	,[GeographyKey]
  --	,[CustomerAlternateKey]
  --	,[Title]
  --	,[FirstName] 
  --	,[MiddleName]
  --	,[LastName]
    CONCAT(c.FirstName, ' ', c.LastName) as [Full Name] --,[NameStyle]
  --	,[BirthDate]
  --	,[MaritalStatus]
  --	,[Suffix]
  --	,[Gender]
   ,CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender 
  --	 ,[EmailAddress]
  --	,[YearlyIncome]
  --	,[TotalChildren]
  --	,[NumberChildrenAtHome]
  --	,[EnglishEducation]
  --	,[SpanishEducation]
  --	,[FrenchEducation]
  --	,[EnglishOccupation]
  --	,[SpanishOccupation]
  --	,[FrenchOccupation]
  --	,[HouseOwnerFlag]
  --	,[NumberCarsOwned]
  --	,[AddressLine1]
  --	,[AddressLine2]
  --	,[Phone]
   ,c.DateFirstPurchase AS DateFirstPurchase, 
    g.City AS [Customer city],
	g.EnglishCountryRegionName AS Country
	--,[CommuteDistance]
 FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
   LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g -- Joined geography table to get customers city
   ON c.GeographyKey = g.GeographyKey 
 ORDER BY c.CustomerKey -- Ordering by customer keys in ascending order
