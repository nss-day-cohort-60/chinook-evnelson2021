SELECT Invoice.Total, Customer.FirstName || ' ' || Customer.LastName AS EmployeeFullName, Customer.Country, Employee.FirstName || ' ' || Employee.LastName AS AgentFullName
FROM Employee
    JOIN Invoice
        ON Invoice.CustomerId = Customer.CustomerId
    JOIN Customer
        ON Employee.EmployeeId = Customer.SupportRepId