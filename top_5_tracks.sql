SELECT Track.Name as Name, COUNT(InvoiceLine.TrackId) as TrackCount
FROM InvoiceLine
    JOIN Track 
        ON InvoiceLine.TrackId = Track.TrackId
GROUP BY Track.Name
ORDER BY TrackCount DESC
LIMIT 5