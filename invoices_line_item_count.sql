--Grading set  <28/11/2017>
--submitted by <R.K.Narendra Raj>

/* Provide a query that shows all Invoices but includes the # of invoice line items. */
select invoiceid,t.name, count(*)  from invoiceline i, track t where t.trackid=i.trackid  group by invoiceid;
