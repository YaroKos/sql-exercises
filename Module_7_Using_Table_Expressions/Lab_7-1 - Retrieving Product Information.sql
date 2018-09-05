-- select the appropriate columns from the appropriate tables
SELECT P.ProductID, P.Name AS ProductName, PM.Name AS ProductModel, PM.Summary
FROM SalesLT.Product AS P
JOIN SalesLT.vProductModelCatalogDescription AS PM
-- join based on ProductModelID
ON P.ProductModelID = PM.ProductModelID
ORDER BY ProductID;
