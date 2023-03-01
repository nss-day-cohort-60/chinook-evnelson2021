SELECT Employee.FirstName || ' ' || Employee.LastName AS FullName, Invoice.InvoiceId
FROM Employee
    JOIN Invoice
        ON Invoice.CustomerId = Customer.CustomerId
    JOIN Customer
        ON Employee.EmployeeId = Customer.SupportRepId