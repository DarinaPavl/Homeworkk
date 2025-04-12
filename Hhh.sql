CREATE TABLE IF NOT EXISTS Genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Performers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genres_Performers (
  genre_id INTEGER REFERENCES Genres(id),
  performer_id INTEGER REFERENCES Performers(id),
  CONSTRAINT pk1 PRIMARY KEY (genre_id, performer_id)
);

CREATE TABLE IF NOT EXISTS Albums (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  year INTEGER NOT NULL CHECK(year > 0)
);

CREATE TABLE IF NOT EXISTS Performers_Albums (
  performer_id INTEGER REFERENCES Performers(id),
  album_id INTEGER REFERENCES Albums(id),
  CONSTRAINT pk2 PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
  id SERIAL PRIMARY KEY,
  album_id INTEGER REFERENCES Albums(id),
  name VARCHAR(50) NOT NULL,
  duration NUMERIC NOT NULL CHECK(duration > 0)
);

CREATE TABLE IF NOT EXISTS Collections (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  year INTEGER NOT NULL CHECK(year > 0)
);

CREATE TABLE IF NOT EXISTS Collections_Tracks (
  collection_id INTEGER REFERENCES Collections(id),
  track_id INTEGER REFERENCES Tracks(id),
  CONSTRAINT pk3 PRIMARY KEY (collection_id, track_id)
);
