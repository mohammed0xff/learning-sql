	--Provide a query that includes the track name with each invoice line item.


SELECT t.Name as 'Track Name', * FROM InvoiceLine as il
LEFT OUTER JOIN Track AS t ON (t.TrackId = il.TrackId)
