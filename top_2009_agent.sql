SELECT e.FirstName || " " || e.LastName as EmployeeName, SUM(i.Total) as InvoiceTotal
FROM Invoice AS "i"
JOIN Customer AS "c"
	ON i.CustomerId == c.CustomerId
JOIN Employee AS "e"
	ON c.SupportRepId == e.EmployeeId
WHERE e.Title = "Sales Support Agent" 
AND strftime("%Y", InvoiceDate) IN ("2009")
GROUP BY e.FirstName || " " || e.LastName
ORDER BY SUM(i.Total)desc