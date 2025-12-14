create table if not exists Genres (
  id serial primary key,
  name varchar(60) not null unique 
);

create table if not exists Performers (
  id serial primary key,
  name varchar(60) not null unique   
);

create table if not exists Albums (
  id serial primary key,
  name varchar(60) not null,
  year smallserial not null
);

create table if not exists Collections (
  id serial primary key,
  name varchar(60),
  year smallserial not null
);

create table if not exists Tracks (
  id serial primary key,
  name varchar(60),
  duration numeric (5,2) not NULL,
  album_id integer not NULL  references Albums(id)
);

create table if not exists PerformersGenres (
  genre_id integer references Genres(id),
  performer_id integer references Performers(id),
  constraint pg primary key (genre_id, performer_id)
);

create table if not exists PerformersAlbums (
  performer_id integer references Performers(id),
  album_id integer references Albums(id),
  constraint pa primary key (performer_id, album_id)
);

create table if not exists CollectionsTracks (
  id serial primary key,
  collection_id integer references Collections(id),
  tracks_id integer references Tracks(id)
);