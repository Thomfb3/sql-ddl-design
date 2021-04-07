

DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league

CREATE TABLE games
(
  id SERIAL PRIMARY KEY,
  season_id INTEGER REFERENCES users,
  team_one_id INTEGER REFERENCES teams,
  team_two_id INTEGER REFERENCES teams,
  team_one_score INTEGER,
  team_two_score INTEGER,
  referee_id INTEGER REFERENCES referees,
);

CREATE TABLE seasons
(
  id SERIAL PRIMARY KEY,
  start DATE,
  end DATE,
);

CREATE TABLE players
(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50),
  current_team_id INTEGER REFERENCES teams
);

CREATE TABLE teams
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50)
  current_season_standing INTEGER
);

CREATE TABLE referees
(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL
);

CREATE TABLE goals
(
  id SERIAL PRIMARY KEY,
  player_id INTEGER REFERENCES players,
  team_id INTEGER REFERENCES teams,
  game_id INTEGER REFERENCES games,
);

