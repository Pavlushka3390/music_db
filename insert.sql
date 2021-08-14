insert into singers (name) values
	('queen'),
	('linkin park'),
	('eminem'),
	('cardi b'),
	('cream soda'),
	('ed sheeran'),
	('travis scott'),
	('nicki minaj');

insert into genres (name) values
	('hip-hop'),
	('pop'),
	('rock'),
	('rap'),
	('alternative');

insert into singers_genres (singer_id, genre_id) values
	(1, 3),
	(2, 5),
	(3, 4),
	(4, 1),
	(4, 4),
	(5, 2),
	(6, 2),
	(7, 1),
	(7, 4),
	(8, 1);

insert into albums (name, year) values
	('a night at the opera', 1975),
	('meteora', 2003),
	('the slim shady LP', 1999),
	('i like it', 2018),
	('comet', 2019),
	('+', 2011),
	('astroworld', 2018),
	('pink friday', 2010)
	
insert into albums (name, year) values
	('test', 2020);

	insert into tracks (name, time, album_id) values
		('Bohemian Rhapsody', 354, 1),
		('Dont Stay', 188, 2),
		('Hit the Floor', 164, 2),
		('i am Shady', 212, 3),
		('My name is', 269, 3),
		('i like it', 257, 4),
		('Comet', 218, 5),
		('1000 planets', 195, 5),
		('Give me love', 260, 6 ),
		('The A team', 258, 6),
		('Afterglow', 198, 6),
		('Sceletons', 146, 7),
		('Wake up', 232, 7),
		('Carousel', 180, 7),
		('Fly', 212, 8),
		('BedRock', 260, 8);
	insert into tracks (name, time, album_id) values
		('test_track', 210, 9);
		
	insert into singers_albums values
		(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8);
	insert into singers_albums values
		(2, 9)
		
	insert into collections (name, year) values 
		('for study', 2018),
		('for walk', 2019),
		('for shower', 2020),
		('for soul', 2020),
		('for cook', 2021),
		('for fish', 2019),
		('for work', 2021),
		('for evil plans', 2019);
		
	insert into tracks_collections (collection_id, track_id) values
		(1, 2), (1, 4), (1, 7),
		(2, 3), (2, 8), (2, 9), 
		(3, 5), (3, 13), (3, 14),
		(4, 12), (4, 15), (4, 16),
		(5, 1), (5, 11), (5, 7), (5, 8),
		(6, 2), (6, 14), (6, 6),
		(7, 8), (7, 11), (7, 15), (7, 1),
		(8, 2), (8, 9), (8, 10);
	insert into tracks_collections (collection_id, track_id) values
		(null, 17);