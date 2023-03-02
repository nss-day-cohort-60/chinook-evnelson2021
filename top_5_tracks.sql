select t.Name,
        COUNT(t.Name) as PurchaseCount
    from Track t
        join InvoiceLine l on l.TrackId = t.TrackId
        join Invoice i on l.InvoiceId = i.InvoiceId
    where STRFTIME('%Y', i.InvoiceDate) = "2013"
    group by t.Name
    order by PurchaseCount desc