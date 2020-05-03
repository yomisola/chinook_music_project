SELECT
Artist.name,
COUNT(*) No_track,
Customer.FirstName customer_firstname, Customer.LastName Customer_lastname, Customer.Country
FROM Artist JOIN Album
ON Artist.ArtistId = Album.ArtistId JOIN Track
ON Track.AlbumId = Album.AlbumId JOIN InvoiceLine
ON InvoiceLine.TrackId = Track.TrackId JOIN Invoice
ON InvoiceLine.InvoiceId = Invoice.InvoiceId JOIN Customer
ON Customer.CustomerId = Invoice.CustomerId GROUP BY 1
ORDER BY 2 DESC