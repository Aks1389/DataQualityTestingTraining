SELECT *, MAX(BirthDate) as "The Youngest one" FROM (
SELECT * FROM [Employees]
where BirthDate between '1950-01-01' AND '1959-12-31')
