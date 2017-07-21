-- 1. All columns for all players from the New York Knicks (NYK)
SELECT *
FROM players
WHERE team = 'NYK';
-- 2. All columns for all players from the Indiana Packers (IND) who are under 26 years old
SELECT *
FROM players
WHERE team = 'IND'
AND age < 26;
-- 3. All columns for all players, ordered from least points scored to most points scored
SELECT *
FROM players
ORDER BY points;
-- 4. Name and Points per game (points/games), for the players with the top 20 points per game
SELECT name, points/games AS points_per_game
FROM players
ORDER BY points_per_game
DESC LIMIT 20;
-- 5. The average age for all players
SELECT AVG(age) avg_age_all
FROM players;
-- 6. The average age for all players on the Oklahoma City Thunder (OKC)
SELECT AVG(age) AS avg_age_okc
FROM players
WHERE team = 'OKC';
-- 7. The average age for all players who played more than 40 games
SELECT AVG(age) AS avg_age_40_games
FROM players
WHERE games > 40;
-- 8. The team and total points scored from all players on that team (team points), ordered from most team points to least
SELECT team, SUM(points) AS total_points
FROM players
GROUP BY team;

-- ### Bonus
-- 1. Age and the average points per game for that age, ordered from youngest to oldest
SELECT age, AVG(points/games) AS avg_points_per_games
FROM players
GROUP BY age
ORDER BY age;
-- 2. Team and the the number of players who score above 12 points per game on that team, ordered from most to least
SELECT team, COUNT(*) AS num_scored_above_12
FROM players
WHERE points/games > 12
GROUP BY team
ORDER BY num_scored_above_12 DESC;
