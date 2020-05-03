SELECT Composer,
sum(Track.UnitPrice) as Amount_Made,
count(*) songs ,
count(DISTINCT(Customer.CustomerId)) Total_Customers
FROM
Track
join InvoiceLine
on Track.TrackId = InvoiceLine.TrackId
join Invoice
on InvoiceLine.InvoiceId = Invoice.InvoiceId join Customer
on Invoice.CustomerId = Customer.CustomerId GROUP by
Composer order by
Amount_Made desc LIMIT 5
