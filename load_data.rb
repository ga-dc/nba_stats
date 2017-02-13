require 'pg'

db_conn = PG.connect(:dbname => 'nbadb', :host => 'localhost')
# database name was done as nbadb instead of nba_db

file = File.new("data.csv", "a+")

file.each do |line|
  player = line.split(",")
  name = player[0].gsub("'","")
  age = player[1]
  team = player[2]
  games_played = player[3]
  points = player[4]

  sql  = "INSERT INTO players (name, age, team, games, points)"
  sql += "VALUES ( '#{name}', '#{age}', '#{team}', '#{games_played}', '#{points}');"

  db_conn.exec(sql)

end

file.close

db_conn.close
