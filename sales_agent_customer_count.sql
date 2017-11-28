--Grading set  <28/11/2017>
--submitted by <R.K.Narendra Raj>


 /* Provide a query that shows the count of customers assigned to each sales agent. */
select employeeid,firstname,lastname,count(customerid) as "no of customers" from employee e ,customer c where c.supportrepid=e.employeeid group by employeeid;
