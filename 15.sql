	--Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.
  
  

SELECT pl.Name AS 'Playlist Name', COUNT(*) AS 'Total Tracks' 
FROM Track as t
LEFT OUTER JOIN PlaylistTrack AS plt 
  ON (plt.TrackId = t.TrackId)
LEFT OUTER JOIN Playlist AS pl 
  ON (pl.PlaylistId = plt.PlaylistId)
GROUP BY pl.Name
