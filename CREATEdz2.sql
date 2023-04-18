CREATE TABLE IF NOT EXISTS Collections(
	id SERIAL primary KEY, 
	Name_Collections VARCHAR(120) not null,
	year_issue INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums(
	id SERIAL primary KEY, 
	Name_Albums VARCHAR(120) not null,
	year_issue INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks(
	id SERIAL primary KEY, 
	Name_Tracks VARCHAR(60) not null,
	duration Time not null,
	Albums_id INTEGER NOT NULL REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Collections_Tracks(
	id SERIAL primary KEY, 
	Tracks_id INTEGER NOT NULL REFERENCES Tracks(id),
	Collections_id INTEGER NOT NULL REFERENCES Collections(id)
);
	
CREATE TABLE IF NOT EXISTS Performers(
	id SERIAL primary KEY, 
	Name_Performers VARCHAR(120) not null
);

CREATE TABLE IF NOT EXISTS Performers_Albums(
	id SERIAL primary KEY,
	Albums_id INTEGER NOT NULL REFERENCES Albums(id),
	Performers_id INTEGER NOT NULL REFERENCES Performers(id)
);

CREATE TABLE IF NOT EXISTS Genres(
	id SERIAL primary KEY, 
	Name_Genres VARCHAR(120) not null
);

CREATE TABLE IF NOT EXISTS Performers_Genres(
	id SERIAL primary KEY,
	Performers_id INTEGER NOT NULL REFERENCES Performers(id),
	Genres_id INTEGER NOT NULL REFERENCES Genres(id)
);