alter table tracks add genres_id integer references genres(id);

create table if not exists singers (
	id serial primary key,
	name varchar(20) not null unique
);

create table if not exists albums (
	id serial primary key,
	name varchar(30) not null,
	year integer,
	singer_id integer references singers(id) not null
);

create table if not exists tracks (
	id serial primary key,
	name varchar(30) not null,
	time integer not null,
	singer_id integer references singers(id) not null,
	album_id integer references albums(id) not null
);

create table if not exists genres (
	id serial primary key,
	name varchar(30) not null unique
);

create table if not exists collectoons (
	id serial primary key,
	name varchar(30) not null,
	year integer,
	track_id integer references tracks(id)
);