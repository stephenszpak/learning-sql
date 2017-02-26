SELECT FirstName ||" "|| LastName AS "Full Name", InvoiceId, InvoiceDate, BillingAddress 
FROM (SELECT * FROM Customer JOIN Invoice on Customer.CustomerId == Invoice.CustomerId)
WHERE Country == "Brazil"