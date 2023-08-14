DROP DATABASE IF EXISTS videogames_dev;
CREATE DATABASE videogames_dev;

\c videogames_dev;

CREATE TABLE videogames (
 id NUMERIC,
 name TEXT NOT NULL,
 url TEXT,
 genre TEXT,
 is_favorite BOOLEAN
);

DROP TABLE IF EXISTS abouts;

CREATE TABLE abouts (
 app_id NUMERIC,
 app_type TEXT,
 publisher TEXT,
 last_change NUMERIC,
 last_update TEXT,
 release_date TEXT,
 videogame_id INTEGER REFERENCES videogames(id)
 ON DELETE CASCADE
);
