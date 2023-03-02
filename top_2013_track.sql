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

WITH TopTracks AS (
    SELECT t.Name,
        COUNT(t.Name) AS PurchaseCount
    FROM Track t
JOIN InvoiceLine l ON l.TrackId = t.TrackId
JOIN Invoice i ON l.InvoiceId = i.InvoiceId
    WHERE STRFTIME('%Y', i.InvoiceDate) = "2013"
    GROUP BY t.Name
    ORDER BY PurchaseCount DESC
),

Top2Tracks AS(
    select Name,
        PurchaseCount
    from TopTracks
    where (
            select max(PurchaseCount)
            from TopTracks
        ) = PurchaseCount
)


-- -Just testing for multiple CTEs

select Name,
    PurchaseCount
from Top2Tracks
where Name LIKE "E%"