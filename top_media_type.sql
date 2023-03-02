SELECT MediaType.Name, COUNT(InvoiceLine.TrackId) as TrackCount
FROM InvoiceLine
    JOIN Track 
        ON Track.TrackId = InvoiceLine.TrackId
    JOIN MediaType
        ON MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY MediaType.Name
ORDER BY TrackCount DESC
LIMIT 1