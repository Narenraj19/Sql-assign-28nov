--Grading set  <28/11/2017>
--submitted by <R.K.Narendra Raj>

/*  Provide a query that shows the top 3 best selling artists. */
select ar.name,count(invoicelineid) from invoiceline i,invoice iv,track t,artist ar,album al where i.trackid=t.trackid and iv.invoiceid=i.invoiceid and ar.artistid=al.artistid and al.albumid=t.albumid group by ar.name order by count(i.invoicelineid) desc limit 3;