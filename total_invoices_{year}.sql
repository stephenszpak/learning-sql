SELECT strftime('%Y',InvoiceDate) AS InvoiceYear, COUNT(InvoiceId) AS InvoicesCount
FROM Invoice
WHERE strftime('%Y',InvoiceDate) IN ('2009','2011')
GROUP BY strftime('%Y',InvoiceDate)