	--Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.
  
  

SELECT t.Name AS 'Track Name', a.Title AS 'Album Title', mt.Name AS 'Media Type', g.Name AS 'Genre', t.Composer, t.Milliseconds, t.Bytes, t.UnitPrice FROM Track AS t
LEFT OUTER JOIN Album AS a 
  ON (a.AlbumId = t.AlbumId)
LEFT OUTER JOIN MediaType AS mt 
  ON (mt.MediaTypeId = t.MediaTypeId)
LEFT OUTER JOIN Genre AS g 
  ON (g.GenreId = t.GenreId)
