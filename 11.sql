--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY


SELECT il.InvoiceId, COUNT(*) FROM InvoiceLine AS il
GROUP BY il.InvoiceId;
