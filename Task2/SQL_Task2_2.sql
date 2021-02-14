SELECT OrderID, Count(ProductID) as 'UniqueProductsAmount', SUM(Quantity) as 'AllProducts' FROM OrderDetails
Group By OrderID;

Select MAX(UniqueProducts) from (
SELECT COUNT(ProductID) as 'UniqueProducts' FROM [OrderDetails]
GROUP BY OrderID);

SELECT orderID, MAX(AllProducts) from (
SELECT orderID, SUM(Quantity) as 'AllProducts' FROM OrderDetails
GROUP BY OrderID);