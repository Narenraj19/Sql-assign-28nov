--Grading set  <28/11/2017>
--submitted by <R.K.Narendra Raj>


/*  Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table. */
select count(*),p.name from playlist p, playlisttrack pl 
where p.playlistid=pl.playlistid 
group by pl.playlistid;