--line_item_track.sql: 
--Provide a query that includes the purchased track name with each invoice line item.

SELECT t.Name, il.InvoiceLineId 
FROM InvoiceLine AS "il"
JOIN Track AS "t"
	ON il.TrackId == t.TrackId