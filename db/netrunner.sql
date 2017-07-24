DROP TABLE if EXISTS runners;
DROP TABLE if EXISTS corps;
DROP TABLE if EXISTS matches;
DROP TABLE if EXISTS players;
DROP TABLE if EXISTS leagues;

CREATE TABLE runners (
  id SERIAL4 PRIMARY KEY,
  faction VARCHAR(255),
  name VARCHAR(255)
  );

CREATE TABLE corps (
  id SERIAL4 PRIMARY KEY,
  faction VARCHAR(255),
  name VARCHAR(255)
  );

CREATE TABLE leagues (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  start_date VARCHAR(255),
  end_date VARCHAR(255),
  max_players INT4
  );

CREATE TABLE players (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  surname VARCHAR(255),
  tag VARCHAR(255),
  runner_faction VARCHAR(255),
  runner_identity VARCHAR(255),
  corp_faction VARCHAR(255),
  corp_identity VARCHAR(255),
  league_id INT4 REFERENCES leagues(id)
  );

CREATE TABLE matches (
  id SERIAL4 PRIMARY KEY,
  league_id INT4 REFERENCES leagues(id)
  round1_runner_player_id INT4 REFERENCES players(id),
  round1_runner_faction VARCHAR(255),
  round1_runner_identity VARCHAR(255),
  round1_corp_player_id INT4 REFERENCES players(id),
  round1_corp_faction VARCHAR(255),
  round1_corp_identity VARCHAR(255),
  round1_winner_id INT4 REFERENCES players(id),
  round2_runner_player_id INT4 REFERENCES players(id),
  round2_runner_faction VARCHAR(255),
  round2_runner_identity VARCHAR(255),
  round2_corp_player_id INT4 REFERENCES players(id),
  round2_corp_faction VARCHAR(255),
  round2_corp_identity VARCHAR(255),
  round2_winner_id INT4 REFERENCES players(id)
  );