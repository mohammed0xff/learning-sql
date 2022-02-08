--Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT i.*, e.FirstName, e.LastName FROM dbo.Invoice AS i
LEFT OUTER JOIN dbo.Customer AS c 
  ON (c.CustomerId = i.CustomerId)
LEFT OUTER JOIN dbo.Employee AS	e 
  ON (e.EmployeeId = c.SupportRepId)
