--Provide a query that includes the purchased track name AND artist name with each invoice line item.


SELECT t.Name AS 'Track Name', Artist.Name AS 'Artist Name', * 
FROM InvoiceLine AS il
LEFT OUTER JOIN Track AS t 
  ON (t.TrackId = il.TrackId)
LEFT OUTER JOIN Album 
  ON (Album.AlbumId = t.AlbumId)
LEFT OUTER JOIN Artist 
  ON (Artist.ArtistId = Album.ArtistId);
