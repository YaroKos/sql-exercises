-- select CompanyName and TotalDue columns
SELECT CompanyName, TotalDue AS Revenue,
       -- get ranking and order by appropriate column
       RANK() OVER (ORDER BY TotalDue DESC) AS RankByRevenue
FROM SalesLT.SalesOrderHeader AS SOH
-- use appropriate join on appropriate table
JOIN SalesLT.Customer AS C
ON SOH.CustomerID = C.CustomerID;
