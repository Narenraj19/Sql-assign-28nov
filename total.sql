--Grading set  <28/11/2017> 
submitted by <R.K.Narendra Raj> 


/* Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers. */
select invoiceid,invoicedate,e.firstname,e.lastname from invoice i 
join customer  c on i.customerid=c.customerid
 join employee e  on c.supportrepid=e.employeeid ;