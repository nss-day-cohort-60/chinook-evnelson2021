SELECT BillingCountry, COUNT(InvoiceId)
FROM Invoice
GROUP BY BillingCountry