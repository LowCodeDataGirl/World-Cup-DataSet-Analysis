/*
DO CERTAIN CITIES DRAW BIGGER CROWDS 

The Top results in this query will show which cities had the most attendance on average.
Average was used instead of sum so cities that have hosted the world cup lots of times are
not at an advantage(this would occur with SUM
*/
SELECT   AVG(CAST(Attendance as int)) as [AvgCityAtt],[City]  
FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [City]
ORDER BY [AvgCityAtt] DESC


 
 /*
 HOW HAS ATTENDANCE TRENDED OVER TIME 
 
How Has Attendance Trended Over Time
(This query gives the attendance total per year)
*/
SELECT   [Year], SUM(cast (Attendance as int)) AS SumYearAtt
FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [Year]
ORDER BY [Year] ASC
 


--DO CERTAIN TEAMS SEE LARGER ATTENDANCE

-- This query gives the attendance total for each teams to check for large attendance

SELECT   [Home Team Name], SUM( cast (Attendance as int))  AS SumTeamAtt
FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [Home Team Name]
ORDER BY [SumTeamAtt] DESC

SELECT   [Away Team Name],SUM( cast (Attendance as int)) AS SumTeamAtt
FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [Away Team Name]
ORDER BY [SumTeamAtt] DESC



--Based on the Home Team and Away Team columns, does there seem to be a "home team advantage"?
--This query calculates the sum of home goals and away goals 

SELECT SUM( cast ([Home Team Goals] as int)) AS sum_home_goals,
       SUM( cast ([Away Team Goals] as int)) AS sum_away_goals 
FROM   [Portfolio_Projects ].[dbo].[WorldCupMatches]  



-- This query calculates the total goals scored per Team
  
SELECT   [Home Team Name],
         SUM(cast([Home Team Goals] as int)) OVER (PARTITION BY [Home Team Name]) AS  SumHomeGoals, 
         [Away Team Name], 
	     SUM(cast([Away Team Goals] as int)) OVER (PARTITION BY [Away Team Name]) AS SumAwayGoals
FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches] 
ORDER BY [Away Team Name] ASC

--NOTE: Try to rewrite this query with a query that can sum 'SumHomeGoals' and 'SumAwayGoals'



-- This query below sums total half time goals in home and away columns by Teams
 

SELECT [Home Team Name],sum( cast ([Half-time Home Goals] as int)) as SumHalfTimeGoals  
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [Home Team Name]
Order by [SumHalfTimeGoals] DESC

 

SELECT [Away Team Name],SUM(cast ([Half-time Away Goals] as int)) as SumHalfTimeGoals  
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [Away Team Name]
Order by [SumHalfTimeGoals] DESC





--Do any teams seem to be stronger in either the first half or the second half? (think about both offense and defense)


/* This query finds the most offensive teams in first half of the world cup. It sums the result of 
( home teams that scored the most(offensive) + away team that scored the most(offensive) )
I had to dig through google and stackoverflow to make this work. If there are better queries to do this, Im open   
 
*/
SELECT  [Home Team Name] , SUM([Number of 1st Half Wins]) AS [1st Half Most Offensive Teams] --(This sum query sums the result of offensive home team and offensive away team )
FROM 
        ( 
          SELECT [Home Team Name], COUNT([Half-time Home Goals]) AS [Number of 1st Half Wins]--This query counts the number of times the home team scored more than the away team to know the most offensive home team 
          FROM Portfolio_Projects.dbo.WorldCupMatches
          WHERE [Half-time Home Goals] > [Half-time Away Goals]
          GROUP BY  [Home Team Name] 
	           UNION ALL
	      SELECT [Away Team Name], COUNT([Half-time Away Goals]) AS [Number of 1st Half  Wins] --This query counts the number of times the away team scored more than the home team to know the most offensive away team 
          FROM Portfolio_Projects.dbo.WorldCupMatches
          WHERE [Half-time Away Goals] > [Half-time Home Goals]
          GROUP BY  [Away Team Name]  
		  ) s

GROUP BY [Home Team Name]--This query groups the results by Home Team Name
ORDER BY SUM([Number of 1st Half Wins] ) DESC -- This orders the results in desc order to show top offensive teams 



 
 /* This query finds the most defensive teams in the second half of the world cup. It sums the result of 
( home teams that conceded the least(defensive) in first half + away team that conceded less(defensive) in first half )
I had to dig through google and stackoverflow to make this work. If there are better queries to do this, Im open   
 NOTE: The top offensive and defensive teams were the same after running the queries so we are looking for the strongest teams in first half and second half since top offense and defense are same 
*/
 --This query finds the most defensive home team in 1st half by counting the nuber of times the home team conceded less to the away team
  SELECT [Home Team Name], COUNT([Half-time Home Goals]) AS [Number of 2nd Half Wins]--This query counts the number of times the home team scored more than the away team to know the most offensive home team 
          FROM Portfolio_Projects.dbo.WorldCupMatches
          WHERE [Half-time Away Goals]  <  [Half-time Home Goals] --the team that was scored less
          GROUP BY  [Home Team Name] 
		  order by  [Number of 2nd Half Wins] desc


--This query finds the most defensive away team in 1st half by counting the nuber of times the away team conceded less to the home team 
  SELECT [Away Team Name], COUNT([Half-time Away Goals]) AS [Number of 2nd Half  Wins] --This query counts the number of times the away team scored more than the home team to know the most offensive away team 
          FROM Portfolio_Projects.dbo.WorldCupMatches
          WHERE [Half-time Home Goals]  < [Half-time Away Goals]  
          GROUP BY  [Away Team Name]  
 order by [Number of 2nd Half  Wins] desc

  
--This query finds the most defensive team in first half by counting the number of times each team conceded less in both home and away 


SELECT  [Home Team Name] , SUM([Number of 2nd Half Wins]) AS [1st Half Most Defensive Teams] --(This sum query sums the result of offensive home team and offensive away team )
FROM 
        ( 
         SELECT [Home Team Name], COUNT([Half-time Home Goals]) AS [Number of 2nd Half Wins]--This query counts the number of times the home team scored more than the away team to know the most offensive home team 
          FROM Portfolio_Projects.dbo.WorldCupMatches
          WHERE [Half-time Away Goals]  <  [Half-time Home Goals] --the team that was scored less
          GROUP BY  [Home Team Name] 
	           UNION ALL
	      SELECT [Away Team Name], COUNT([Half-time Away Goals]) AS [Number of 2nd Half  Wins] --This query counts the number of times the away team scored more than the home team to know the most offensive away team 
          FROM Portfolio_Projects.dbo.WorldCupMatches
          WHERE [Half-time Home Goals]  < [Half-time Away Goals]  
          GROUP BY  [Away Team Name]  
		  ) s

GROUP BY [Home Team Name]--This query groups the results by Home Team Name
ORDER BY  [1st Half Most Defensive Teams]  DESC -- This orders the results in desc order to show top offensive teams 


 --This query adds the columns 2nd half home goals and 2nd half away goals 
 ALTER TABLE Portfolio_Projects.dbo.WorldCupMatches
 ADD [2nd Half Home Goals] int,
    [2nd Half Away Goals] int






-- Query to insert data in the 2nd half home and away goals column 
UPDATE Portfolio_Projects.dbo.WorldCupMatches

SET
 [2nd Half Home Goals] = cast([Home Team Goals]as int)-cast([Half-time Home Goals]as int),
 [2nd Half Away Goals] = cast([Away Team Goals]as int) - cast([Half-time Away Goals]as int)








 --This Query finds the most offensive team in 2nd half by counting how many times the home team scoed more than the away team 
  SELECT [Home Team Name], COUNT( [2nd Half Home Goals]) AS [Number of 2nd Half Wins]--This query counts the number of times the home team scored more than the away team to know the most offensive home team 
          FROM Portfolio_Projects.dbo.WorldCupMatches
          WHERE  [2nd Half Home Goals] >   [2nd Half Away Goals]   
          GROUP BY  [Home Team Name] 
		  order by  [Number of 2nd Half Wins] desc


--This query finds the most team in 2nd half by counting how many times the away team scoed more than the home team 
  SELECT [Away Team Name], COUNT( [2nd Half Away Goals]) AS [Number of 2nd Half  Wins] --This query counts the number of times the away team scored more than the home team to know the most offensive away team 
          FROM Portfolio_Projects.dbo.WorldCupMatches
          WHERE  [2nd Half Away Goals]  > [2nd Half Home Goals] 
          GROUP BY  [Away Team Name]  
 order by [Number of 2nd Half  Wins] desc

  
--This query finds the most offensive team in 2nd half by counting the number of times both home and away teams scored in 2nd half 

SELECT  [Home Team Name] , SUM([Number of 2nd Half Wins]) AS [2nd Half Most Offensive Teams] --(This sum query sums the result of offensive home team and offensive away team )
FROM 
        ( 
         SELECT [Home Team Name], COUNT( [2nd Half Home Goals]) AS [Number of 2nd Half Wins]--This query counts the number of times the home team scored more than the away team to know the most offensive home team 
          FROM Portfolio_Projects.dbo.WorldCupMatches
          WHERE  [2nd Half Home Goals] >   [2nd Half Away Goals]   
          GROUP BY  [Home Team Name] 
		  
	           UNION ALL
	       SELECT [Away Team Name], COUNT( [2nd Half Away Goals]) AS [Number of 2nd Half  Wins] --This query counts the number of times the away team scored more than the home team to know the most offensive away team 
          FROM Portfolio_Projects.dbo.WorldCupMatches
          WHERE  [2nd Half Away Goals]  > [2nd Half Home Goals] 
          GROUP BY  [Away Team Name] 
		  ) s

GROUP BY [Home Team Name]--This query groups the results by Home Team Name
ORDER BY  [2nd Half Most Offensive Teams]  DESC -- This orders the results in desc order to show top offensive teams 



/*  
WHICH TEAMS HAVE WON THE MOST GAMES 

This query counts the number of wins of each countries and orders them
from the highest to lowest number 
*/
SELECT   [Win conditions], COUNT([Win conditions]) as NumberOfWins
FROM     Portfolio_Projects.dbo.WorldCupMatches
WHERE    [Win conditions] not in ('Draw' )
GROUP BY [Win conditions]
ORDER BY COUNT([Win conditions]) desc


 
--THIS QUERY UPDATES THE DRAWS IN THE [Win Conditions] COLUMN(Confirm and move this query to data cleaning) 

UPDATE Portfolio_Projects.dbo.WorldCupMatches
SET
       [Win conditions] = 'Draw'

WHERE  [Away Team Goals] = [Home Team Goals]


/*
HOW HAS THE NUMBER OF WINS PER COUNTRY TRENDED OVER TIME ?

This Query shows number of wins of each country.
*/
SELECT   [Year],[Win conditions] , COUNT([Win conditions]) as NumberOfWins
FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches] 
WHERE    [Win conditions] not in ('Draw' )
GROUP BY [Year],[Win conditions]
ORDER By [Win conditions], [Year]


/* 
WHICH PLAYERS HAD THE LONGEST CAREERS?

This Query shows the number of appearances made by each player at the WorldCup. 
I used  this to measure the career lenght.(This mmeans that if the number of recurrence of the player
shows how long they played in the World Cup
*/
SELECT    [Player Name],  COUNT( [Player Name]) AS [Number of Appearances]
FROM      Portfolio_Projects.dbo.WorldCupPlayers p
GROUP BY  [Player Name]  
ORDER BY  [Number of Appearances] desc

