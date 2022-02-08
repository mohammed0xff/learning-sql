	--Which sales agent made the most in sales in 2009? HINT: MAX
  
  
  SELECT TOP(1) *
FROM (SELECT c.SupportRepId as sales_agent, COUNT(c.SupportRepId) AS total_sales 
FROM Customer as c
LEFT OUTER JOIN Invoice as i 
  on (i.CustomerId = c.CustomerId)
LEFT OUTER JOIN Employee as e 
  on (e.EmployeeId = c.SupportRepId)
WHERE YEAR(i.InvoiceDate) = 2009
GROUP BY c.SupportRepId) as total_sales_per_agent
ORDER BY total_sales_per_agent.total_sales desc
