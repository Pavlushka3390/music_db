select name genres, count(singer_id) singers from genres g 
join singers_genres sg on g.id = sg.genre_id
group by g.name; 

select count(t.id) tracks from tracks t 
join albums a on t.album_id = a.id
where year>2018 and year<2021;

select a.name album, avg(t.time) avg_track_time from albums a
join tracks t on t.album_id = a.id
group by a.name;

select s.name from singers s 
join singers_albums sa on s.id = sa.singer_id 
join albums a on a.id = sa.album_id 
where a.year != 1975
group by s.name;

select c.name from collections c 
join tracks_collections tc on c.id = tc.collection_id 
join tracks t on tc.track_id = t.id 
join albums a on a.id = t.album_id 
join singers_albums sa on a.id = sa.album_id 
join singers s on s.id = sa.singer_id 
where s.name = 'cardi b'
group by c.name;

select a.name from albums a 
join singers_albums sa on a.id = sa.album_id 
join singers s on sa.singer_id = s.id 
join singers_genres sg on sg.singer_id = s.id 
group by a.name
having count(sg.singer_id) > 1;

select t.name from tracks t 
join tracks_collections tc on t.id = tc.track_id 
where tc.collection_id is null
group by t.name

select s.name, t.time from singers s 
join singers_albums sa on s.id = sa.singer_id 
join albums a on sa.album_id = a.id 
join tracks t on a.id = t.album_id 
group by s.name, t.time
having t.time = (select min(time) from tracks);

select a.name from albums a 
join tracks t on a.id = t.album_id 
where t.album_id in(
select album_id from tracks
group by album_id
having count(id) = (select count(id) from tracks 
group by album_id
order by count
limit 1));


