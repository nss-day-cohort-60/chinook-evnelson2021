SELECT InvoiceId, COUNT(InvoiceId) as Count
FROM InvoiceLine
GROUP BY InvoiceId