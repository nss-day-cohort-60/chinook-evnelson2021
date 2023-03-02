SELECT Employee.FirstName || ' ' || Employee.LastName AS FullName, COUNT(CustomerId) AS TotalCustomers
FROM Employee
    LEFT JOIN Customer
        ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY FullName