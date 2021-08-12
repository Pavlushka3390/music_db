select name, year from albums where year=2018;

select name, time from tracks where time = (select max(time) from tracks);

select name from tracks where time>210;

select name from collections where year>2018 and year<2020;

select name from singers where name not like('% %'); 

select name from tracks t where name ilike('%my%');