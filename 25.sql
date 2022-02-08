--Provide a query that shows the top 5 most purchased tracks over all.


SELECT TOP(5) il.TrackId, SUM(il.Quantity) AS Sales 
FROM InvoiceLine AS il
LEFT OUTER JOIN Invoice AS i 
  ON (i.InvoiceId = il.InvoiceLineId)
GROUP BY il.TrackId
ORDER BY Sales DESC
