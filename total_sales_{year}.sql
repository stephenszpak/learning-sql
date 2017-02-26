SELECT strftime('%Y',InvoiceDate) AS InvoiceYear, SUM(Total)
FROM Invoice
WHERE strftime('%Y',InvoiceDate) IN ('2009','2011')
GROUP BY strftime('%Y',InvoiceDate)