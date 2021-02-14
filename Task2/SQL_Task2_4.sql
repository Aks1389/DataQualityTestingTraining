select Count(CustomerID) from orders
where OrderId in(
	select OrderID from OrderDetails
	where ProductID in(
		select ProductID from Products
		where SupplierID in (
			select SupplierID from Suppliers
			where Country = "UK" or Country = "Spain")))