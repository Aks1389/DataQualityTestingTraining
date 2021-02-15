SELECT SUBSTR(SupplierName, 1,1) as 'FirstLetter', Count(*) FROM Suppliers
GROUP BY SUBSTR(SupplierName, 1,1)
ORDER BY 'FirstLetter' ASC