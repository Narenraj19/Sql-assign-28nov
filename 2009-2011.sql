--Grading set  <28/11/2017>
--submitted by <R.K.Narendra Raj>


/*  How many Invoices were there in 2009 and 2011? */
select count(*) from invoice where invoicedate like '2009%' or invoicedate like '2011%'; 