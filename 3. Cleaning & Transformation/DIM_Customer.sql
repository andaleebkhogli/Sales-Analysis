-- Cleansed Dim_Customer Table --


SELECT [CustomerKey] AS [Customer Key]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName] AS [First Name]
      --,[MiddleName]
      ,[LastName] AS [Last Name]
	  ,[FirstName] +' '+ [LastName] AS [Full Name] --Concatenated first name and last name as full name
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      --[Gender],
	  ,CASE [Gender] 
	  WHEN 'F' THEN 'Female'
	  WHEN 'M' THEN 'Male'
	  END AS [Gender]
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
      ,[DateFirstPurchase]
      --,[CommuteDistance]
	  ,G.[City] AS [Customer City] -- Joined in Customer City from Geography Table
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS C
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS G
  ON C.GeographyKey = G.GeographyKey

  ORDER BY CustomerKey ASC --Order list by CustomerKey
