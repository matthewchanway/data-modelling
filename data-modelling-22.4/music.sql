-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE producers(
  id SERIAL PRIMARY KEY,
  name TEXT
)

CREATE TABLE artists(
  id SERIAL PRIMARY KEY,
  name TEXT
)

CREATE TABLE albums(
  id SERIAL PRIMARY KEY,
  name TEXT
  release_data DATE
)




CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  artist_id INTEGER REFERENCES artists ON DELETE SET NULL,
  album_id INTEGER REFERENCES albums ON DELETE SET NULL,
  producer_id INTEGER REFERENCES producers ON DELETE SET NULL,
);
