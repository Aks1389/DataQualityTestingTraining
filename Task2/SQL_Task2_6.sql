SELECT IIF(SUM(LEN(c.Country)) = SUM(LEN(s.Country)), 'equal', 'not equal') as Result
FROM ((((Orders o
inner join Customers c
on o.customerID = c.CustomerID)
inner join OrderDetails od
on o.OrderID = od.OrderID)
inner join Products p
on od.ProductID = p.ProductID)
inner join Suppliers s
on p.SupplierID = s.SupplierID)