/****** Script for Product table ******/
SELECT 
	p.ProductKey, 
	p.ProductAlternateKey AS [Product_Item_Code], 
	pc.EnglishProductCategoryName AS [Product Category], 
	ps.EnglishProductSubcategoryName AS [Product Subcategory] 
  --	,[ProductSubcategoryKey]
  --	,[WeightUnitMeasureCode]
  --	,[SizeUnitMeasureCode]
   ,p.EnglishProductName AS [Product Name] --,[SpanishProductName]
  --	,[FrenchProductName]
  --	,[StandardCost] 
  --	,[FinishedGoodsFlag]
   ,p.ModelName AS [Product Model]
   ,[ProductLine] AS [Product Line]
   ,p.Color AS [Product Colour] --,[SafetyStockLevel]
  --	 ,[ReorderPoint]
  --	 ,[p.ListPrice] 
  ,[Size] AS [Product Size] 
 --		,[SizeRange]
 --		,[Weight]
 --	    ,[DaysToManufacture]
 --		,[DealerPrice]
 --		,[Class]
 --		,[Style]
 --		,[LargePhoto]
 --		,[EnglishDescription]
 --		,[FrenchDescription]
 --		,[ChineseDescription]
 --		,[ArabicDescription]
 --		,[HebrewDescription]
 --		,[ThaiDescription]
 --		,[GermanDescription]
 --	    ,[JapaneseDescription]
 --	    ,[TurkishDescription]
 --		,[StartDate]
 --		,[EndDate]
   ,ISNULL(Status, 'Outdated') AS Status 
 FROM 
   [AdventureWorksDW2019].[dbo].[DimProduct] AS p 
   LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS ps
   ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey 
   LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc 
   ON ps.ProductCategoryKey = pc.ProductCategoryKey

