-- Cleansed DIM_Product table --

SELECT [ProductKey]
      ,[ProductAlternateKey] AS [Product Item Code]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] AS [Product Name]
	  ,PSC.[EnglishProductSubcategoryName] AS [Product Subcategory Name] --Joined from Product SubCategory table
	  ,PC.[EnglishProductCategoryName] AS [Product Category Name] -- Joined from Product Category table
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] AS [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] AS [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine] AS [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] AS [Product Model Name]
      --,[LargePhoto]
      ,[EnglishDescription] AS [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL([Status], 'Outdated') AS [Status] --Replaced null values with Outdated in Status column
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS P
  LEFT JOIN [dbo].[DimProductSubcategory] AS PSC
  ON P.ProductSubcategoryKey = PSC.ProductSubcategoryKey -- To be able to filter products per subcategory
  LEFT JOIN [dbo].[DimProductCategory] AS PC
  ON PSC.ProductCategoryKey = PC.ProductCategoryKey -- To be able to filter products per category

  ORDER BY P.ProductKey ASC;