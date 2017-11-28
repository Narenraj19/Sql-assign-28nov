--Grading set  <28/11/2017>
--submitted by <R.K.Narendra Raj>

/*  Provide a query that shows the most purchased Media  */
select max(maxi),m.name from (select count(i.invoicelineid) as maxi,m.name from invoiceline i,track t,mediatype m where i.trackid=t.trackid and t.mediatypeid=m.mediatypeid group by m.name);