/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  
    [ProductKey], 
    [OrderDateKey], 
    [DueDateKey], 
    [ShipDateKey], 
    [CustomerKey], 
  --	,[PromotionKey]
  --	,[CurrencyKey]
  --	,[SalesTerritoryKey]
    [SalesOrderNumber], 
  --	 [SalesOrderLineNumber], 
  --	 ,[RevisionNumber]
  --	 ,[OrderQuantity], 
  --	,[UnitPrice], 
  --	,[ExtendedAmount]
  --	,[UnitPriceDiscountPct]
  --	,[DiscountAmount] 
  --	,[ProductStandardCost]
  --	,[TotalProductCost] 
  [SalesAmount] 
  --	,[TaxAmt]
  --	,[Freight]
  --	,[CarrierTrackingNumber] 
  --	,[CustomerPONumber] 
  --	,[OrderDate] 
  --	,[DueDate] 
  --	,[ShipDate] 
 FROM 
   [AdventureWorksDW2019].[dbo].[FactInternetSales]
 WHERE 
   LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- Based on request, This ensures the query returns only two years of date from extraction.
 ORDER BY
   OrderDateKey -- Ordering by date in ascending order