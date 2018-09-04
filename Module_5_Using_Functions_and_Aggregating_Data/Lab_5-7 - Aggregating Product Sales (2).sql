SELECT Name, SUM(LineTotal) AS TotalRevenue
FROM SalesLT.SalesOrderDetail AS SOD
JOIN SalesLT.Product AS P
ON SOD.ProductID = P.ProductID
-- filter as per the instructions
WHERE P.ListPrice > 1000
GROUP BY P.Name
ORDER BY TotalRevenue DESC;
