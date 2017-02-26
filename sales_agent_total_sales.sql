SELECT e.FirstName || " " || e.LastName AS EmployeeName, SUM(i.Total) AS InvoiceTotal
FROM Invoice AS i
JOIN Customer AS c
  ON i.CustomerId = c.CustomerId
JOIN Employee AS e
  ON c.SupportRepId = e.EmployeeId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.FirstName || " " || e.LastName;