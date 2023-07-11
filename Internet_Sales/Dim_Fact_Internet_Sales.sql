--Cleansed Dim_Fact_Internet_Sales Table
SELECT 
	f.[ProductKey] AS [Product Key],
	f.[OrderDateKey] AS [Order Date Key],
    f.[DueDateKey] AS  [Due Date Key],
    f.[ShipDateKey] AS [Ship Date Key],
    f.[CustomerKey] AS [Customer Key],
	--   [PromotionKey]
    --  ,[CurrencyKey]
    --  ,[SalesTerritoryKey]
    f.[SalesOrderNumber] AS [Sales Order Number],
    --  ,[SalesOrderLineNumber]
    --  ,[RevisionNumber]
    --  ,[OrderQuantity]
    --  ,[UnitPrice]
    --  ,[ExtendedAmount]
    --  ,[UnitPriceDiscountPct]
    --  ,[DiscountAmount]
    --  ,[ProductStandardCost]
    --  ,[TotalProductCost]
    f.[SalesAmount] AS [Sales Amount]
    --  ,[TaxAmt]
    --  ,[Freight]
    --  ,[CarrierTrackingNumber]
    --  ,[CustomerPONumber]
    --  ,[OrderDate]
    --  ,[DueDate]
    --  ,[ShipDate]
  FROM 
  [dbo].[FactInternetSales] AS f
  WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- Ensures we always only brings two years of date from Extraction
  ORDER BY 
  f.OrderDateKey ASC