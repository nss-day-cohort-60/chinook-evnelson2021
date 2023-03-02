SELECT Artist.Name, COUNT(InvoiceLine.TrackId) as TrackCount
FROM InvoiceLine
    JOIN Track 
        ON Track.TrackId = InvoiceLine.TrackId
    JOIN Album
        ON Album.AlbumId = Track.AlbumId
    JOIN Artist
        ON Artist.ArtistId = Album.ArtistId
GROUP BY Artist.Name
ORDER BY TrackCount DESC
LIMIT 3