
create table if not exists singers (
	id serial primary key,
	name varchar(20) not null unique
);

create table if not exists genres (
	id serial primary key,
	name varchar(30) not null unique
);

create table if not exists singers_genres (
	singer_id int references singers(id),
	genre_id int references genres(id)
);

create table if not exists albums (
	id serial primary key,
	name varchar(30) not null,
	year int
);

create table if not exists singers_albums (
	singer_id int references singers(id),
	album_id int references albums(id)
);

create table if not exists tracks (
	id serial primary key,
	name varchar(30) not null,
	time int not null,
	album_id int references albums(id) not null
);

create table if not exists collections (
	id serial primary key,
	name varchar(30) not null,
	year int
);

create table if not exists tracks_collections (
	track_id int references tracks(id),
	collection_id int references collections(id)
);

