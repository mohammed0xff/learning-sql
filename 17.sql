	--Provide a query that shows all Invoices but includes the # of invoice line items.
  
  
SELECT i.InvoiceId, i.CustomerId, i.InvoiceDate, i.BillingAddress
  , i.BillingCity, i.BillingState, i.BillingCountry,
  i.BillingPostalCode, i.Total, COUNT(il.InvoiceLineId) as 'Total Invoice Line Items' 
FROM InvoiceLine AS il
LEFT OUTER JOIN Invoice AS i 
  ON (i.InvoiceId = il.InvoiceId)
WHERE il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId, i.CustomerId, i.BillingAddress, i.InvoiceDate
  , i.BillingCity, i.BillingCountry, i.BillingState,
  i.BillingPostalCode, i.Total
