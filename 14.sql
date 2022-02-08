--Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT c.Country, COUNT(*) AS 'Total Invoices' FROM Invoice AS i
LEFT OUTER JOIN Customer AS c ON (c.CustomerId = i.CustomerId)
GROUP BY c.Country;
