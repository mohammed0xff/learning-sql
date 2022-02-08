--Provide a query that shows the most purchased Media Type.


SELECT TOP(1) mt.MediaTypeId, mt.Name, SUM(il.Quantity) AS Sales 
FROM InvoiceLine AS il
LEFT OUTER JOIN Invoice AS i 
  ON (i.InvoiceId = il.InvoiceLineId)
LEFT OUTER JOIN Track AS t 
  ON (t.TrackId = il.TrackId)
LEFT OUTER JOIN MediaType AS mt 
  ON (mt.MediaTypeId = t.MediaTypeId)
GROUP BY mt.MediaTypeId, mt.Name
ORDER BY Sales DESC
