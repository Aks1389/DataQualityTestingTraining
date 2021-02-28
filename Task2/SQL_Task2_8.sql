SELECT o.OrderID, c.CustomerID, c.CustomerName, p.ProductName, p.Price 
FROM Orders o
	inner join Customers c
	on o.customerID = c.CustomerID
	inner join OrderDetails od
	on o.OrderID = od.OrderID
	inner join Products p
	on od.ProductID = p.ProductID
WHERE p.Price in (SELECT Price from Products
	Group by Price
    Order By Price Desc
    Limit 2)
Order By p.Price Desc