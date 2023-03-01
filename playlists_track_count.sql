SELECT Playlist.Name, COUNT(PlaylistTrack.TrackId) as "Number of Tracks"
FROM PlaylistTrack
    JOIN Playlist
        ON PlaylistTrack.PlaylistId  = Playlist.PlaylistId
    JOIN Track
        ON Track.TrackId = PlaylistTrack.TrackId
GROUP BY PlaylistTrack.PlaylistId
