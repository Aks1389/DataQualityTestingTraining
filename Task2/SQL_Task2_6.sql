SELECT o.OrderID, c.CustomerName, c.CustomerID, c.Country as 'CustomerCountry', s.Country as 'SupplierCountry', LENGTH(c.Country) as 'LEN C', LENGTH(s.Country) as 'LEN S', IIF(LENGTH(c.Country)=LENGTH(s.Country), 'Y', 'N') as 'Result' 
FROM Orders o
inner join Customers c
on o.customerID = c.CustomerID
inner join OrderDetails od
on o.OrderID = od.OrderID
inner join Products p
on od.ProductID = p.ProductID
inner join Suppliers s
on p.SupplierID = s.SupplierID