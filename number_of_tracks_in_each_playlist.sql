SELECT
  playlist.PlaylistId,
  playlist.Name,
  COUNT(PlaylistTrack.TrackId) No_of_Track
FROM Playlist
JOIN PlaylistTrack
  ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY Playlist.PlaylistId
ORDER BY 1