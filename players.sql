
DROP TABLE IF EXISTS players;

CREATE TABLE players (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  age integer NOT NULL,
  team varchar(50),
  games integer NOT NULL,
  points integer NOT NULL
);

-- All columns for all players from the New York Knicks (NYK)
  SELECT * FROM players WHERE team = 'NYK';

 -- All columns for all players from the Indiana Packers (IND) who are under 26 years old
  SELECT * FROM players WHERE team = 'IND' AND age < 26;

 -- All columns for all players, ordered from least points scored to most points scored
  SELECT * FROM players ORDER BY points ASC;

 -- Name and Points per game (points/games), for the players with the top 20 points per game
  SELECT name, points FROM players ORDER BY points DESC LIMIT 20 OFFSET 20;

-- The average age for all players
  SELECT AVG(age) FROM players;

 -- The average age for all players on the Oklahoma City Thunder (OKC)
  SELECT AVG(age) FROM players WHERE team = 'OKC';

 -- The average age for all players who played more than 40 games
  SELECT AVG(age) FROM players WHERE games > 40;

 -- The team and total points scored from all players on that team (team points), ordered from most team points to least
  SELECT team, SUM(points) AS total_points FROM players GROUP BY team ORDER BY total_points DESC;
