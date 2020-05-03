SELECT
  Employee.FirstName,
  STRFTIME('%Y-%m', Employee.HireDate) Hire_date,
  COUNT(*) Customer,
  Customer.Country
FROM Employee
JOIN Customer
  ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY 2
ORDER BY 3 DESC