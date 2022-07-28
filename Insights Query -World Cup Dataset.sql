--DO CERTAIN CITIES DRAW BIGGER CROWDS 

--The top results in this query will show teams that have had the most attendance on average
SELECT distinct 
AVG(CAST(Attendance as int)) OVER (PARTITION BY [City]) AS running_total,  *
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
Order by running_total desc

 
--The top results in this query will show teams that have had the most crowd on average
SELECT
  
SUM(CAST(Attendance as int)) OVER (PARTITION BY [City]) AS running_total,  *
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
Order by running_total desc



--HOW HAS THE ATTENDANCE TRENDED OVER TIME 
-- This query gives the attendance total per year

SELECT
  SUM( cast (Attendance as int)) OVER (PARTITION BY [Year]) AS running_total,  *
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
Order by running_total desc


--DO CERTAIN TEAMS SEE LARGER ATTENDANCE

-- This query gives the attendance total per team match to see which has he highest attendance 

SELECT
  SUM( cast (Attendance as int)) OVER (PARTITION BY [Home Team Name]) AS running_total,  *
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
Order by running_total desc


--Based on the Home Team and Away Team columns, does there seem to be a "home team advantage"?

--This query calculates the sum of home goals and away goals 

 SELECT SUM( cast ([Home Team Goals] as int)) AS sum_home_goals, SUM( cast ([Away Team Goals] as int)) AS sum_away_goals 
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 


-- This query calculates the total goals scored per country
 
SELECT [Home Team Name],SUM( cast ([Home Team Goals] as int)) OVER (PARTITION BY [Home Team Name]) AS running_total, 
[Away Team Name], SUM( cast ([Away Team Goals] as int)) OVER (PARTITION BY [Away Team Name]) AS running_totass
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
Order by running_total desc


--Based on the Home Team and Away Team columns, does there seem to be a "home team advantage"?
-- This query below sums total half time goals in home and away columns by country 
 

SELECT [Home Team Name],SUM( cast ([Half-time Home Goals] as int)) as sumofHTHGoals,  
SUM( cast ([Half-time Away Goals] as int)) AS sumofHTAGoals
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [Home Team Name]
Order by [Home Team Name] asc

--Do any teams seem to be stronger in either the first half or the second half? (think about both offense and defense)

 







select *
from [Portfolio_Projects ].[dbo].[WorldCupMatches] 


 