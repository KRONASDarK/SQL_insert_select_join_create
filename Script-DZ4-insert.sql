INSERT INTO Genres (name) VALUES ('Rock'), ('Jazz'), ('Pop');

INSERT INTO Performers (name) VALUES ('Queen'), ('Michael Jackson'), ('The Beatles'), ('Ella Fitzgerald');

INSERT INTO Albums (name, year) VALUES ('A Night at the Opera', '1975'), ('Thriller', '1982'), ('Abbey Road', '1969');

INSERT INTO Collections (name, year) VALUES ('Classic Rock Collection', '2022'), ('Best of Jazz', '2023'), ('Golden Hits', '2024'), ('Vintage Pop', '2025');

INSERT INTO Tracks (name, duration, album_id) VALUES 
('Bohemian Rhapsody', 5.55, 1),
('Billie Jean', 4.54, 2),
('Come Together', 4.19, 3),
('Another One Bites The Dust', 3.55, 1),
('Smooth Criminal', 4.13, 2),
('Something', 3.01, 3);

INSERT INTO PerformersGenres (genre_id, performer_id) VALUES 
(1, 1),   -- Queen-Rock
(2, 4),   -- Ella Fitzgerald-Jazz
(3, 2);   -- Michael Jackson-Pop

INSERT INTO PerformersGenres (genre_id, performer_id) VALUES 
(1, 3),   -- The Beatles-Rock
(3, 3);   -- The Beatles-Pop

INSERT INTO PerformersAlbums (performer_id, album_id) VALUES 
(1, 1),   -- Queen-A Night at the Opera
(2, 2),   -- Michael Jackson-Thriller
(3, 3);   -- The Beatles-Abbey Road

INSERT INTO CollectionsTracks (collection_id, tracks_id) VALUES 
(1, 1),   -- Classic Rock Collection включает Bohemian Rhapsody
(2, 4),   -- Best of Jazz включает Another One Bites The Dust
(3, 2),   -- Golden Hits включает Billie Jean
(4, 3);   -- Vintage Pop включает Come Together
