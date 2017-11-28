--Grading set  <28/11/2017>
--submitted by <R.K.Narendra Raj>


/*  Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37. */
select count(*) from invoiceline 
where invoiceid=37;