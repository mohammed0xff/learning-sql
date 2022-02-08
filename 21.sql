	--Which sales agent made the most in sales over all?
  
  
  
SELECT TOP(1) *
FROM (SELECT c.SupportRepId AS sales_agent, COUNT(c.SupportRepId) AS totalSales 
FROM Customer AS c
LEFT OUTER JOIN Invoice AS i 
  ON (i.CustomerId = c.CustomerId)
LEFT OUTER JOIN Employee AS e 
  ON (e.EmployeeId = c.SupportRepId)
GROUP BY c.SupportRepId) AS total_sales_per_agent
ORDER BY total_sales_per_agent.totalSales DESC
