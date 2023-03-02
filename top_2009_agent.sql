SELECT FullName, MAX(TotalSales)
FROM 
(SELECT Employee.FirstName || ' ' || Employee.LastName AS FullName, ROUND(SUM(Invoice.Total), 2) as TotalSales
FROM Employee
    JOIN Invoice
        ON Invoice.CustomerId = Customer.CustomerId
    JOIN Customer
        ON Employee.EmployeeId = Customer.SupportRepId
WHERE InvoiceDate LIKE "%2009%"
GROUP BY FullName)