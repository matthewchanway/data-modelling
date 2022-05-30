CREATE TABLE teams(
    id SERIAL PRIMARY KEY,
    name TEXT,
    wins INTEGER,
    losses INTEGER,
    ties INTEGER
);

CREATE TABLE goals(
    id SERIAL PRIMARY KEY,
    match_id INTEGER REFERENCES matches,
    player_id INTEGER REFERENCES players
);

CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    name TEXT,
    team_id INTEGER REFERENCES teams
);

CREATE TABLE refs(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE seasons(
    id SERIAL PRIMARY KEY,
    name TEXT,
    season_start DATE,
    season_end DATE
);

CREATE TABLE matches(
    id SERIAL PRIMARY KEY,
    team1_id INTEGER REFERENCES teams ON DELETE SET NULL,
    team2_id INTEGER REFERENCES teams ON DELETE SET NULL,
    ref_id INTEGER REFERENCES refs ON DELETE SET NULL,
    winner INTEGER REFERENCES teams ON DELETE SET NULL,
    match_date DATE
);