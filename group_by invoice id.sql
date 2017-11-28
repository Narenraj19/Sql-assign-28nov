--Grading set  <28/11/2017>
--submitted by <R.K.Narendra Raj>


/*Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY */
select invoiceid,count(*) from invoiceline 
group by invoiceid;