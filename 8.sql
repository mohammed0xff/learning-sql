	--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
  
  
SELECT i.Total,c.FirstName + ' ' + c.LastName AS CustomerFullName, c.Country, e.FirstName + ' ' + e.LastName AS SalesAgentName 
FROM dbo.Invoice AS i
LEFT OUTER JOIN dbo.Customer AS c 
  ON (c.CustomerId = i.CustomerId)
LEFT OUTER JOIN dbo.Employee AS e 
  ON (e.EmployeeId = c.SupportRepId)
