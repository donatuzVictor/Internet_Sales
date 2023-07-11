--Cleasned DIM_Products Tables--
SELECT
  p.[ProductKey],
  p.[ProductAlternateKey] AS [Product Item Code],
  --	,[ProductSubcategoryKey]
  --    ,[WeightUnitMeasureCode]
  --    ,[SizeUnitMeasureCode]
  p.[EnglishProductName] AS [Product Name],
  ps.EnglishProductSubCategoryName AS [Sub Category], --Joined in from sub category table
  pc.EnglishProductCategoryName As [Product Category], -- Joined in from category table
  --    ,[SpanishProductName]
  --    ,[FrenchProductName]
  --    ,[StandardCost]
  --    ,[FinishedGoodsFlag]
  p.[Color]  AS [Product Color],
  --    ,[SafetyStockLevel]
  --    ,[ReorderPoint]
  --    ,[ListPrice]
  p.[Size] AS [Product Size],
  --   ,[SizeRange]
  --    ,[Weight]
  --    ,[DaysToManufacture]
  p.[ProductLine] AS [Product Line],
  --    ,[DealerPrice]
  --    ,[Class]
  --    ,[Style]
  p.[ModelName] As [Product Model Name],
  --    ,[LargePhoto]
  p.[EnglishDescription] AS [Product Description],
  --    ,[FrenchDescription]
  --    ,[ChineseDescription]
  --    ,[ArabicDescription]
  --  ,[HebrewDescription]
  --    ,[ThaiDescription]
  --    ,[GermanDescription]
  --    ,[JapaneseDescription]
  --    ,[TurkishDescription]
  --    ,[StartDate]
  --    ,[EndDate]
  ISNULL (p.Status, 'Outdated') AS [Product Status]
 FROM 
	[dbo].[DimProduct] as p
	LEFT JOIN dbo.DimProductSubCategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
 ORDER BY
	p.ProductKey ASC




