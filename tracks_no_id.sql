SELECT DISTINCT Album.Title as "Album Title", MediaType.Name as "Media Type", Genre.Name as "Genre"
FROM Track 
    JOIN Album
        ON Album.AlbumId = Track.AlbumId
    JOIN MediaType
        ON MediaType.MediaTypeId = Track.MediaTypeId
    JOIN Genre
        ON Genre.GenreId = Track.GenreId