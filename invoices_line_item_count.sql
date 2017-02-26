SELECT distinct c.FirstName, i.InvoiceDate, COUNT(il.Quantity) 
FROM Invoice AS "i" 
JOIN InvoiceLine AS "il"
	ON il.InvoiceId == i.InvoiceId 
JOIN Customer AS "c" 
	ON i.CustomerId == c.CustomerId 
GROUP BY il.InvoiceId