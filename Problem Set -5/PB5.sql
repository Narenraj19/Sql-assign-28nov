-- ProblemSet5., November 28  2017 
-- Submission by R.K.Narendra Raj 



/* 1.Give the organiser's name of the concert in the Assembly Rooms after the first of Feb, 1997. (1 point possible) */ 
 	select m.m_name as organiser_name from concert c, musician m where concert_venue='assembly rooms' and con_date > 01/02/97 and m.m_no = c.concert_organiser 
 
 
 
 
 /*2.Find all the performers who played guitar or violin and were born in England. (1 point possible) */ 
 	select  m.m_name from musician m join performer p on m.m_no=p.perf_is join place pl on pl.place_no= m.born_in where p.instrument in('violin' , 'guitar') and pl.place_country='england' 
 
 
 
 
 /*3.List the names of musicians who have conducted concerts in USA together with the towns and dates of these concerts. (1 point possible)*/ 
 	select m.m_name  as musician,pl.place_town,c.con_date from musician m, place pl, concert c where c.concert_in=pl.place_no and m.m_no=c.concert_organiser and pl.place_country='usa' group by m.m_no; 
 
 
 
 
 /* 4.How many concerts have featured at least one composition by Andy Jones? List concert date, venue and the composition's title. (1 point possible)*/ 
 
 
 
 
 /*5.List the different instruments played by the musicians and avg number of musicians who play the instrument. (1 point possible)*/ 
 	select instrument,avg(count) as avg_musicians from (select instrument,count( perf_is) as count from performer group by instrument) group by instrument 
 
 
 
 
 /* 6.List the names, dates of birth and the instrument played of living musicians who play a instrument which Theo also plays. (1 point possible)*/ 
 	select m.m_name, m.born, p.instrument from musician m join performer p on m.m_no= p.perf_is and m.died is null and p.instrument in 
 (select instrument from musician m ,performer p on m_no=perf_is where m_name like 'theo%') ; 
 
 
 
 
 /*7.List the name and the number of players for the band whose number of players is greater than the average number of players in each band. (1 point possible)*/ 
 	select p.band_id,b.band_name,count(p.player) as num_of_playersfrom band b join plays_in p ON b.band_no=p.band_idgroup by p.band_id having  num_of_players > (select avg(num_of_players) from (select band_id,count(player) as num_of_players from plays_in group by band_id)); 
 
 
 
 
 /*8.List the names of musicians who both conduct and compose and live in Britain. (1 point possible)*/ 
 	select distinct(m_name)from musician m join place  on living_in=place_no join has_composed h  on h.cmpr_no=m.m_no  join concert  
