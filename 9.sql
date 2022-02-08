
	--How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?
    
    
SELECT InvoicesIn2009, TotalSalesIn2009, InvoicesIn2011, TotalSalesIn2011 
FROM
(SELECT 'as' AS t, COUNT(*) AS InvoicesIn2009, SUM(i.Total) AS TotalSalesIn2009 FROM Invoice AS i
WHERE year(i.InvoiceDate) = 2009) t1
INNER JOIN
(SELECT 'as' AS t, COUNT(*) AS InvoicesIn2011, SUM(i.Total) AS TotalSalesIn2011 FROM Invoice AS i
WHERE year(i.InvoiceDate) = 2011) t2
ON t1.t = t2.t
