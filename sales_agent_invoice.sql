SELECT FirstName ||" "|| LastName AS "Full Name", InvoiceId FROM (SELECT * FROM Employee AS "e" JOIN Customer AS "cf" ON c.SupportRepId == e.EmployeeId JOIN Invoice AS "i" ON c.CustomerId == i.CustomerId)

-- Shows Full name of employee and associated invoice ids