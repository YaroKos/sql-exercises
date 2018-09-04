-- select the Name column and use the appropriate function with the appropriate column
SELECT Name, SUM(LineTotal) AS TotalRevenue
FROM SalesLT.SalesOrderDetail AS SOD
-- use the appropriate join
JOIN SalesLT.Product AS P
-- join based on ProductID
ON SOD.ProductID = P.ProductID
GROUP BY P.Name
ORDER BY TotalRevenue DESC;
