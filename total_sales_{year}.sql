SELECT SUM(Total)
FROM Invoice
WHERE InvoiceDate LIKE "%2009%"

SELECT SUM(Total)
FROM Invoice
WHERE InvoiceDate LIKE "%2011%"

SELECT DISTINCT (strftime('%Y', InvoiceDate)) as Year, SUM(Total)
FROM Invoice
GROUP BY Year