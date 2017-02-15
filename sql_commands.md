1. All columns for all players from the New York Knicks (NYK)
```sql
SELECT * FROM players WHERE team = 'NYK';
```

2. 2. All columns for all players from the Indiana Packers (IND) who are under 26 years old
```sql
SELECT * FROM players WHERE team = 'IND' AND age < 26;
```

3. All columns for all players, ordered from least points scored to most points scored
```sql
SELECT * FROM players ORDER BY points;
```

4. Name and Points per game (points/games), for the players with the top 20 points per game
```sql
SELECT name, points FROM players ORDER BY points * -1 LIMIT 20;
```

5. The average age for all players
```sql
SELECT AVG(age) FROM players;
```

6. The average age for all players on the Oklahoma City Thunder (OKC)
```sql
SELECT AVG(age) FROM players WHERE team = 'OKC';
```

7. The average age for all players who played more than 40 games
```sql
SELECT AVG(age) FROM players WHERE games > 40;
```

8. The team and total points scored from all players on that team (team points), ordered from most team points to least
```sql
SELECT team, SUM(points) FROM players GROUP BY team ORDER BY SUM(points) * -1;
```
