DROP TABLE if EXISTS players;
DROP TABLE if EXISTS leagues;

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
  second_name VARCHAR(255),
  tag VARCHAR(255),
  runner_faction VARCHAR(255),
  runner_identiry VARCHAR(255),
  corp_faction VARCHAR(255),
  corp_identity VARCHAR(255),
  league_id INT4 REFERENCES leagues(id)
  );