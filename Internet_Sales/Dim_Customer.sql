--Cleaasned DIM_Customers Table
SELECT 
 c.CustomerKey  AS [Customer Key],
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
 c.firstname AS [First Name],
      --,[MiddleName]
 c.lastname AS [Last Name],
 c.firstname + ' ' + lastname AS [Full Name],
	--Combined First and Last Name
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
 CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
 c.datefirstpurchase AS [Date Of First Purchase],
	  --,[CommuteDistance]
 g.city AS [Customer City] --Joined in Customer City from Geography Table
 FROM
		dbo.dimcustomer AS c
	LEFT JOIN dbo.dimgeography AS g On g.geographyKey = c. geographyKey
 ORDER BY
 CustomerKey ASC --Ordered List By Customers
  
