SELECT JobPosition, AVG(Salary) as `my_avg` FROM Employees
GROUP BY JobPosition
HAVING `my_avg` > 2000;