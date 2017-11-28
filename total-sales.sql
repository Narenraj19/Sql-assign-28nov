--Grading set  <28/11/2017>
--submitted by <R.K.Narendra Raj>


/* What are the respective total sales for each of those years? */
select total from invoice where invoicedate in (select invoicedate from invoice
 where invoicedate like '2009%' or invoicedate like '2011%');