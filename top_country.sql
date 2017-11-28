--Grading set  <28/11/2017>
--submitted by <R.K.Narendra Raj>

 /* Which country's customers spent the most? */
select billingcountry from (select max(total),billingcountry from (select sum(total) as total,billingcountry from invoice group by billingcountry));