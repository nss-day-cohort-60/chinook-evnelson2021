SELECT Playlist.Name, COUNT(PlaylistTrack.TrackId) as "Number of Tracks"
FROM PlaylistTrack
    LEFT JOIN Playlist
        ON PlaylistTrack.PlaylistId  = Playlist.PlaylistId
GROUP BY PlaylistTrack.PlaylistId
