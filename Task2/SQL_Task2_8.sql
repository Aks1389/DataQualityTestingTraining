Select * FROM (
	SELECT o.OrderID, c.CustomerID, c.CustomerName, p.ProductName, p.Price 
	FROM Orders o
	inner join Customers c
	on o.customerID = c.CustomerID
	inner join OrderDetails od
	on o.OrderID = od.OrderID
	inner join Products p
	on od.ProductID = p.ProductID)
GROUP BY Price
ORDER By Price DESC
LIMIT 2