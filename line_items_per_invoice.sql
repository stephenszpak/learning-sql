SELECT InvoiceId, COUNT(distinct InvoiceLineId) as InvoiceLines
FROM InvoiceLine
GROUP BY
InvoiceId