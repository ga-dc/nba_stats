DROP TABLE IF EXISTS players;

CREATE TABLE players (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  age integer NOT NULL,
  team varchar(50),
  games integer NOT NULL,
  points integer NOT NULL
);


1. All columns for all players from the New York Knicks (NYK
2. All columns for all players from the Indiana Packers (IND) who are under 26 years old
3. All columns for all players, ordered from least points scored to most points scored
4. Name and Points per game (points/games), for the players with the top 20 points per game
5. The average age for all players
6. The average age for all players on the Oklahoma City Thunder (OKC)
7. The average age for all players who played more than 40 games
8. The team and total points scored from all players on that team (team points), ordered from most team points to least

###Bonus
1. Age and the average points per game for that age, ordered from youngest to oldest
2. Team and the the number of players who score above 12 points per game on that team, ordered from most to least
