SELECT e.FirstName AS "Sales Agent Name", InvoiceId, Total, c.Country, c.FirstName 
FROM Employee AS "e" 
JOIN Customer AS "c" 
	ON c.SupportRepId == e.EmployeeId 
JOIN Invoice AS "i" 
	ON c.CustomerId == i.CustomerId