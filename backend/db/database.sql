CREATE DATABASE SongSpace;

USE SongSpace;

-- Create table 'song_types'
CREATE TABLE song_types(
  id INT NOT NULL,
  name VARCHAR(90) NOT NULL
);

ALTER TABLE song_types
  MODIFY id INT NOT NULL,
  ADD PRIMARY KEY(id);

-- Create table 'song_artists'
CREATE TABLE song_artists(
  id INT NOT NULL,
  name VARCHAR(90) NOT NULL
);

ALTER TABLE song_artists
  MODIFY id INT NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY(id);

-- Create table 'songs'
CREATE TABLE songs(
  id INT NOT NULL,
  name VARCHAR(150) NOT NULL,
  duration INT NOT NULL,
  filePath VARCHAR(255) NOT NULL,
  id_type INT NOT NULL,
  id_artist INT NOT NULL
);

ALTER TABLE songs
  MODIFY id INT NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY(id),
  ADD FOREIGN KEY(id_type) REFERENCES song_types(id),
  ADD FOREIGN KEY(id_artist) REFERENCES song_artists(id);

