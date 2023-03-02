SELECT MAX(BillingCountry), TotalSales
FROM(SELECT BillingCountry, ROUND(SUM(Invoice.Total), 2) as TotalSales
FROM Invoice
GROUP BY BillingCountry)