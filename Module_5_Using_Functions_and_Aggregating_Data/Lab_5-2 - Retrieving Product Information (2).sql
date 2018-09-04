SELECT ProductID, UPPER(Name) AS ProductName, ROUND(Weight, 0) AS ApproxWeight,
       -- get the year of the SellStartDate
       YEAR(SellStartDate) as SellStartYear,
       -- get the month datepart of the SellStartDate
       DATENAME(m, SellStartDate) as SellStartMonth
FROM SalesLT.Product;
