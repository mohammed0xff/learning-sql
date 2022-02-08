--Provide a query that shows the most purchased track of 2013.


SELECT TOP(1) il.TrackId, SUM(il.Quantity) as Sales 
FROM InvoiceLine AS il
LEFT OUTER JOIN Invoice AS i 
on (i.InvoiceId = il.InvoiceLineId)
WHERE YEAR(i.InvoiceDate) = 2013
GROUP BY il.TrackId
ORDER BY Sales desc
