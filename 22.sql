--Provide a query that shows the # of customers assigned to each sales agent.


SELECT c.SupportRepId AS 'Sales Agent', COUNT(c.CustomerId) AS '# of customers assigned' 
FROM Customer AS c
GROUP BY c.SupportRepId
