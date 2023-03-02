-- FROM STEVE

SELECT
	t.Name,
	COUNT(t.Name) PurchaseCount
FROM
	Track t
JOIN InvoiceLine l ON
	l.TrackId = t.TrackId
JOIN Invoice i ON
	l.InvoiceId = i.InvoiceId
WHERE
	STRFTIME('%Y', i.InvoiceDate) = "2013"
GROUP BY
	t.Name
ORDER BY
	PurchaseCount DESC

-- FROM STEVE - Common Table Expression

with TopTracks as (
    select t.Name,
        COUNT(t.Name) as PurchaseCount
    from Track t
        join InvoiceLine l on l.TrackId = t.TrackId
        join Invoice i on l.InvoiceId = i.InvoiceId
    where STRFTIME('%Y', i.InvoiceDate) = "2013"
    group by t.Name
    order by PurchaseCount desc
)

select Name,
    PurchaseCount
from TopTracks
where (
        select max(PurchaseCount)
        from TopTracks
    ) = PurchaseCount


-- -Just testing for multiple CTEs
-- select Name,
--     PurchaseCount
-- from TopTracks
-- where Name LIKE "E%"