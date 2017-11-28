--Grading set  <28/11/2017>
--submitted by <R.K.Narendra Raj>

/*  Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre. */
select t.name as track,a.title as album,m.name as mediyatype,g.name as genre from track t,album a,genre g,mediatype m where t.albumid=a.albumid and t.MediaTypeId=m.MediaTypeId and t.GenreId=g.GenreId;
