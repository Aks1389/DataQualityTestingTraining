SELECT SUBSTRING(SupplierName, 1,1) + ' - ' + CAST(Count(*) as varchar) FROM Suppliers
GROUP BY SUBSTRING(SupplierName, 1,1)
ORDER BY SUBSTRING(SupplierName, 1,1) ASC