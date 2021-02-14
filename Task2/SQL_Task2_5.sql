SELECT *, COUNT(*) AS 'Repeated_times' 
FROM (SELECT FirstName, LastName FROM Employees e1
	  UNION ALL
	  SELECT FirstName, LastName FROM Employees e2
	  WHERE e2.FirstName = "Anne")
GROUP BY FirstName, LastName
Having COUNT(*) > 1