/****** Script for Calendar  ******/
SELECT 
    [DateKey], 
    [FullDateAlternateKey] AS Date 
  --	 ,[DayNumberOfWeek]
   ,[EnglishDayNameOfWeek] AS Day
  --	 ,[SpanishDayNameOfWeek]
  --	,[FrenchDayNameOfWeek]
  --	 ,[DayNumberOfMonth]
  --	,[DayNumberOfYear]
   ,[WeekNumberOfYear]
   ,[EnglishMonthName] AS Month, 
    LEFT(EnglishMonthName, 3) AS Month_short --,[SpanishMonthName]
  --	 ,[FrenchMonthName]
   ,[MonthNumberOfYear] AS Month_No
   ,[CalendarQuarter] AS Quarter 
   ,[CalendarYear] AS Year --,[CalendarSemester]
  --	 ,[FiscalQuarter]
  --	,[FiscalYear]
  --	,[FiscalSemester]
 FROM 
   [AdventureWorksDW2019].[dbo].[DimDate] 
 WHERE 
   CalendarYear >= YEAR(GETDATE()) - 2

