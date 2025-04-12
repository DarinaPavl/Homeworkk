-- 1. Название и продолжительность самого длительного трека
SELECT name, duration
FROM Tracks
WHERE duration = (SELECT MAX(duration) FROM Tracks);

-- 2. Название треков, продолжительность которых не менее 3,5 минут
SELECT name
FROM Tracks
WHERE duration >= 210;

-- 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name
FROM Collections
WHERE year BETWEEN 2018 AND 2020;

-- 4. Исполнители, чьё имя состоит из одного слова
SELECT name
FROM Performers
WHERE name NOT LIKE '% %';

SELECT name
FROM Tracks
WHERE
    LOWER(name) ILIKE 'my %' OR
    LOWER(name) ILIKE '% my' OR
    LOWER(name) ILIKE '% my %' OR
    LOWER(name) ILIKE 'my' OR
    LOWER(name) ILIKE 'мой %' OR
    LOWER(name) ILIKE '% мой' OR
    LOWER(name) ILIKE '% мой %' OR
    LOWER(name) ILIKE 'мой';
