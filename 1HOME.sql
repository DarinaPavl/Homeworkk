-- Заполнение таблицы Genres (жанры)
INSERT INTO Genres (name) VALUES
('Rock'),
('Pop'),
('Hip-Hop');

-- Заполнение таблицы Performers (исполнители)
INSERT INTO Performers (name) VALUES
('Queen'),
('Ariana Grande'),
('Eminem'),
('Coldplay');

-- Заполнение таблицы Genres_Performers (связь жанров и исполнителей)
INSERT INTO Genres_Performers (genre_id, performer_id) VALUES
(1, 1), -- Queen -> Rock
(2, 2), -- Ariana Grande -> Pop
(3, 3), -- Eminem -> Hip-Hop
(1, 4); -- Coldplay -> Rock

-- Заполнение таблицы Albums (альбомы)
INSERT INTO Albums (name, year) VALUES
('Greatest Hits', 1981),
('Thank U, Next', 2019),
('The Marshall Mathers LP', 2000),
('Parachutes', 2000);

-- Заполнение таблицы Performers_Albums (связь исполнителей и альбомов)
INSERT INTO Performers_Albums (performer_id, album_id) VALUES
(1, 1), -- Queen -> Greatest Hits
(2, 2), -- Ariana Grande -> Thank U, Next
(3, 3), -- Eminem -> The Marshall Mathers LP
(4, 4); -- Coldplay -> Parachutes

-- Заполнение таблицы Tracks (треки)
INSERT INTO Tracks (album_id, name, duration) VALUES
(1, 'Bohemian Rhapsody', 354), -- 5 минут 54 секунды
(1, 'We Will Rock You', 121), -- 2 минуты 1 секунда
(2, '7 Rings', 173), -- 2 минуты 53 секунды
(2, 'Break Up With Your Girlfriend', 207), -- 3 минуты 27 секунд
(3, 'Stan', 333), -- 5 минут 33 секунды
(4, 'Yellow', 267), -- 4 минуты 27 секунд
(1, 'my own', 180), -- 3 минуты
(1, 'own my', 240), -- 4 минуты
(1, 'my', 300), -- 5 минут
(1, 'oh my god', 360), -- 6 минут
(1, 'myself', 420), -- 7 минут
(1, 'by myself', 480), -- 8 минут
(1, 'bemy self', 540), -- 9 минут
(1, 'myself by', 600), -- 10 минут
(1, 'beemy', 660), -- 11 минут
(1, 'premyne', 720); -- 12 минут

-- Заполнение таблицы Collections (сборники)
INSERT INTO Collections (name, year) VALUES
('Best of Rock', 2005),
('Pop Hits', 2020),
('Rap Classics', 2010),
('Chill Vibes', 2015);

-- Заполнение таблицы Collections_Tracks (связь сборников и треков)
INSERT INTO Collections_Tracks (collection_id, track_id) VALUES
(1, 1), -- Best of Rock -> Bohemian Rhapsody
(1, 2), -- Best of Rock -> We Will Rock You
(2, 3), -- Pop Hits -> 7 Rings
(2, 4), -- Pop Hits -> Break Up With Your Girlfriend
(3, 5), -- Rap Classics -> Stan
(4, 6); -- Chill Vibes -> Yellow
