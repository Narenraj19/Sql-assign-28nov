--Grading set  <28/11/2017>
--submitted by <R.K.Narendra Raj>

/* Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.*/

   select CustomerId, firstname,lastname ,country from customer where Country<>'USA';