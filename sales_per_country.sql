--Grading set  <28/11/2017>
--submitted by <R.K.Narendra Raj>

 /* Provide a query that shows the total sales per country. */
select sum(total),billingcountry from invoice group by billingcountry;
