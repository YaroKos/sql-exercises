-- select ProductID and use the appropriate functions with the appropriate columns
SELECT ProductID, UPPER(Name) AS ProductName, ROUND(Weight, 0) AS ApproxWeight
FROM SalesLT.Product;
