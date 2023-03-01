SELECT Customer.FirstName || ' ' || Customer.LastName AS FullName, CustomerId, Country
FROM Customer
WHERE Country != "USA"