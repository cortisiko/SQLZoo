
# Questions related to SQL Joins

# Q8  show the name of all players who scored a goal against Germany.:

SELECT DISTINCT player
FROM game
JOIN goal ON goal.matchid = game.id
WHERE (team1 = 'GER' OR team2 = 'GER')
AND teamid <> 'GER'

#Q9  Show teamname and the total number of goals scored.

SELECT teamname, Count(*) as Goals
  FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname
 
 # Q10: Show the stadium and the number of goals scored in each stadium.

select game.stadium, count(1) as goals
from game join goal
on game.id = goal.matchid
group by game.stadium
