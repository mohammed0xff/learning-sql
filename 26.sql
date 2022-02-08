--Provide a query that shows the top 3 best selling artists.



SELECT TOP(3) a.ArtistId, a.Name, SUM(il.Quantity) AS Sales 
FROM InvoiceLine AS il
LEFT OUTER JOIN Invoice AS i 
  ON (i.InvoiceId = il.InvoiceLineId)
LEFT OUTER JOIN Track AS t 
  ON (t.TrackId = il.TrackId)
LEFT OUTER JOIN Album 
  ON (Album.AlbumId = t.AlbumId)
LEFT OUTER JOIN Artist AS a 
  ON (a.ArtistId = Album.AlbumId)
WHERE a.ArtistId is not NULL
GROUP BY a.ArtistId, a.Name
ORDER BY Sales DESC
