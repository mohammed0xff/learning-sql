--Provide a query that shows the total sales per country. Which country's customers spent the most?


SELECT i.BillingCountry, COUNT(i.InvoiceId) AS Sales, SUM(i.Total) AS TotalSpent 
FROM Invoice AS i
GROUP BY i.BillingCountry
ORDER BY TotalSpent desc
