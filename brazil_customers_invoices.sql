SELECT Customer.FirstName || ' ' || Customer.LastName AS FullName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Customer
JOIN Invoice
    ON Invoice.CustomerId = Customer.CustomerId
WHERE Invoice.BillingCountry = "Brazil"