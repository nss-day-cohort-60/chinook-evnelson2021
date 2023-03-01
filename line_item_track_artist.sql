SELECT * , Track.Name as "Track Name", Artist.Name as "Artist Name"
FROM InvoiceLine
    JOIN Track
        ON Track.TrackId = InvoiceLine.TrackId
    JOIN Album
        ON Album.AlbumId = Track.AlbumId
    JOIN Artist
        ON Artist.ArtistId = Album.Artist