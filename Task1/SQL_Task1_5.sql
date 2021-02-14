SELECT FirstName, LastName FROM employees
WHERE ManagerID IN (
  SELECT ManagerID FROM managers
  WHERE FirstName LIKE('M%')
);