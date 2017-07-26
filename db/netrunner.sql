DROP TABLE if EXISTS games;
DROP TABLE if EXISTS players;
DROP TABLE if EXISTS leagues;
DROP TABLE if EXISTS runners;
DROP TABLE if EXISTS corps;
DROP TABLE if EXISTS runner_factions;
DROP TABLE if EXISTS corp_factions;


CREATE TABLE runner_factions (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
  );

CREATE TABLE corp_factions (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
  );

CREATE TABLE runners (
  id SERIAL4 PRIMARY KEY,
  runner_faction_id INT4 REFERENCES runner_factions(id),
  name VARCHAR(255)
  );

CREATE TABLE corps (
  id SERIAL4 PRIMARY KEY,
  corp_faction_id INT4 REFERENCES corp_factions(id),
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
  runner_faction_id INT4 REFERENCES runner_factions(id) ON DELETE CASCADE,
  runner_identity_id INT4 REFERENCES runners(id) ON DELETE CASCADE,
  corp_faction_id INT4 REFERENCES corp_factions(id) ON DELETE CASCADE,
  corp_identity_id INT4 REFERENCES corps(id) ON DELETE CASCADE,
  league_id INT4 REFERENCES leagues(id) ON DELETE CASCADE
  );

CREATE TABLE games (
  id SERIAL4 PRIMARY KEY,
  league_id INT4 REFERENCES leagues(id) ON DELETE CASCADE,
  round1_runner_player_id INT4 REFERENCES players(id) ON DELETE CASCADE,
  round1_runner_faction_id INT4 REFERENCES runner_factions(id) ON DELETE CASCADE,
  round1_runner_identity_id INT4 REFERENCES runners(id) ON DELETE CASCADE,
  round1_corp_player_id INT4 REFERENCES players(id) ON DELETE CASCADE,
  round1_corp_faction_id INT4 REFERENCES corp_factions(id) ON DELETE CASCADE,
  round1_corp_identity_id INT4 REFERENCES corps(id) ON DELETE CASCADE,
  round1_winner_id INT4 REFERENCES players(id) ON DELETE CASCADE,
  round2_runner_player_id INT4 REFERENCES players(id) ON DELETE CASCADE,
  round2_runner_faction_id INT4 REFERENCES runner_factions(id) ON DELETE CASCADE,
  round2_runner_identity_id INT4 REFERENCES runners(id) ON DELETE CASCADE,
  round2_corp_player_id INT4 REFERENCES players(id) ON DELETE CASCADE,
  round2_corp_faction_id INT4 REFERENCES corp_factions(id) ON DELETE CASCADE,
  round2_corp_identity_id INT4 REFERENCES corps(id) ON DELETE CASCADE,
  round2_winner_id INT4 REFERENCES players(id) ON DELETE CASCADE
  );