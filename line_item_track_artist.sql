SELECT t.Composer, t.Name 
FROM InvoiceLine AS "il" 
JOIN Track AS "t" 
	ON il.TrackId == t.TrackId