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
 HOW HAS ATTENDANCE TRENDED OVER TIME( (both average per game and total per year) 
 
This query gives the attendance total per year BUT I wasnt sure what to use for 
average attendance per game
*/
SELECT   [Year], SUM(cast (Attendance as int)) AS SumYearAtt
FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [Year]
ORDER BY [Year] ASC

 

/*
DO CERTAIN TEAMS SEE LARGER ATTENDANCE

This query shows the attendance total for each teams to check for large attendance.
The query below sums the results of these two queries(your first answer)

SELECT   [Home Team Name], SUM( cast (Attendance as int))  AS SumTeamAtt
FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [Home Team Name]
ORDER BY [SumTeamAtt] DESC

SELECT   [Away Team Name],SUM( cast (Attendance as int)) AS SumTeamAtt
FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [Away Team Name]
ORDER BY [SumTeamAtt] DESC
*/

SELECT  [Home Team Name] , SUM( cast (SumTeamAtt as int))  AS SumTeamAtt --This sums the result of the sum of attendance in the subquery
FROM 
        ( 
          SELECT   [Home Team Name], SUM( cast (Attendance as int))  AS SumTeamAtt--This subquery sums and groups the attendance in the home team
          FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches] 
          GROUP BY [Home Team Name]
	               UNION ALL
	     SELECT   [Away Team Name],SUM( cast (Attendance as int)) AS SumTeamAtt--This subquery sums and groups the attendance in the away team
         FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches] 
         GROUP BY [Away Team Name]
		  ) s

GROUP BY [Home Team Name]--This query groups the results by Home Team Name
ORDER BY SumTeamAtt DESC -- This orders the results in desc order to show top attendance

 

/*
BASED ON THE HOME TEAM AND AWAY TEAM COLOUMNS, DOES THERE SEEM TO BE A "HOME TEAM ADVANTAGE"?

This query calculates the sum of home goals and away goals to check for "home advantage"
*/
SELECT SUM( cast ([Home Team Goals] as int)) AS sum_home_goals,
       SUM( cast ([Away Team Goals] as int)) AS sum_away_goals 
FROM   [Portfolio_Projects ].[dbo].[WorldCupMatches]  


/*
THIS QUERY CALCULATES THE TOTAL GOALS SCORED PER TEAM

This query sums the goals of each team in the home and away teams column 
*/
SELECT  [Home Team Name] ,SUM( cast(SumHomeGoals as int))  AS SumTeamAtt --This sums the result of the sum of home and away team goals in the subquery
FROM 
        ( 
         SELECT    [Home Team Name], SUM(cast([Home Team Goals] as int))AS  SumHomeGoals--This sums the goals of each team int he [Home Team] Column 
         FROM      [Portfolio_Projects ].[dbo].[WorldCupMatches] 
         GROUP BY  [Home Team Name]
	                 UNION ALL
	    SELECT    [Away Team Name], SUM(cast([Away Team Goals] as int))AS  SumHomeGoals--This sums the goals of each team int he [Away Team] Column 
        FROM      [Portfolio_Projects ].[dbo].[WorldCupMatches] 
        GROUP BY  [Away Team Name]
		  ) s

GROUP BY [Home Team Name]--This query groups the results by Home Team Name
ORDER BY SumTeamAtt DESC 



/*
THIS QUERY CALCULATES THE TOTAL HALF-TIME GOALS SCORED PER TEAM

This query sums the half-time goals of each team in the home and away teams column 
*/


SELECT  [Home Team Name] ,SUM( cast(SumHalfTimeGoals  as int))  AS SumTeamAtt --This sums the result of the sum of home and away team goals in the subquery
FROM 
        ( 
        
SELECT [Home Team Name],sum( cast ([Half-time Home Goals] as int)) as SumHalfTimeGoals  
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [Home Team Name]
 
	                 UNION ALL
	    SELECT [Away Team Name],SUM(cast ([Half-time Away Goals] as int)) as SumHalfTimeGoals  
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [Away Team Name]
		  ) s

GROUP BY [Home Team Name]--This query groups the results by Home Team Name
ORDER BY SumTeamAtt DESC 






/* --CHECK WITH SUM 
DO ANY TEAMS SEEM STRONGER IN EITHER THE FIRST HALF OR THE SECOND HALF?(think about both offense and defense)

Offensive Team : Teams that scored more goals 
Defensive Teams : Teams that conceded less goals 

This query finds the strongest(which teams scored the most) teams in first half of the world cup. It sums the result of

SELECT    [Home Team Name], COUNT([Half-time Home Goals]) AS [Number of 1st Half Wins]--This query counts the number of times the home team scored more than the away team to know the most offensive home team 
FROM      Portfolio_Projects.dbo.WorldCupMatches
WHERE     [Half-time Home Goals] > [Half-time Away Goals]
GROUP BY  [Home Team Name] 

And 

SELECT     [Away Team Name], COUNT([Half-time Away Goals]) AS [Number of 1st Half  Wins] --This query counts the number of times the away team scored more than the home team to know the most offensive away team 
FROM       Portfolio_Projects.dbo.WorldCupMatches
WHERE      [Half-time Away Goals] > [Half-time Home Goals]
GROUP BY   [Away Team Name] 
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
ORDER BY [1st Half Most Offensive Teams]  DESC -- This orders the results in desc order to show top offensive teams 


/*
CHECK AND CONFIRM 

SELECT  [Home Team Name] , SUM(cast([Number of 1st Half Wins]as int)) AS [1st Half Most Offensive Teams] --(This sum query sums the result of offensive home team and offensive away team )
FROM 
        ( 
          SELECT [Home Team Name], sum(cast([Half-time Home Goals]as int)) AS [Number of 1st Half Wins]--This query counts the number of times the home team scored more than the away team to know the most offensive home team 
          FROM Portfolio_Projects.dbo.WorldCupMatches
          WHERE [Half-time Home Goals] > [Half-time Away Goals]
          GROUP BY  [Home Team Name] 
	           UNION ALL
	      SELECT [Away Team Name], sum(cast([Half-time Away Goals]as int)) AS [Number of 1st Half  Wins] --This query counts the number of times the away team scored more than the home team to know the most offensive away team 
          FROM Portfolio_Projects.dbo.WorldCupMatches
          WHERE [Half-time Away Goals] > [Half-time Home Goals]
          GROUP BY  [Away Team Name]  
		  ) s

GROUP BY [Home Team Name]--This query groups the results by Home Team Name
ORDER BY [1st Half Most Offensive Teams]  DESC 


*/
















 
/*
THE QUERY ADDS COLUMNS [2nd Half Home Goals] int
and [2nd Half Away Goals] int. 
*/
ALTER TABLE Portfolio_Projects.dbo.WorldCupMatches
ADD         [2nd Half Home Goals] int,
            [2nd Half Away Goals] int



/*
THE QUERY INSERTS DATA INTO THE NEW COLUMNS WITH
HOME TEAMS GOALS - HALF-TIME GOALS = 2ND HALF GOALS
*/
UPDATE Portfolio_Projects.dbo.WorldCupMatches

SET
 [2nd Half Home Goals] = cast([Home Team Goals]as int)-cast([Half-time Home Goals]as int),
 [2nd Half Away Goals] = cast([Away Team Goals]as int) - cast([Half-time Away Goals]as int)





/*--CHECK WITH SUM 
DO ANY TEAMS SEEM STRONGER IN EITHER THE FIRST HALF OR THE SECOND HALF?(think about both offense and defense)

Offensive Team : Teams that scored more goals 
Defensive Teams : Teams that conceded less goals 

This query finds the strongest(which teams scored the most) teams in SECOND HALF of the world cup. It sums the result of

*/

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




/*
HOW HAS THE NUMBER OF WINS PER COUNTRY TRENDED OVER TIME ?

This Query shows number of wins of each country every year.
*/
SELECT   [Year],[Win conditions] , COUNT([Win conditions]) as NumberOfWins
FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches] 
WHERE    [Win conditions] not in ('Draw' )
GROUP BY [Year],[Win conditions]
ORDER By [Win conditions], [Year]


/* 
WHICH PLAYERS HAD THE LONGEST CAREERS?

This Query shows the number of appearances made by each player at the WorldCup. 
I used  this to measure the career lenght.(This means that the number of recurrence of the player
shows how long they played in the World Cup
*/
SELECT    [Player Name],  COUNT( [Player Name]) AS [Number of Appearances]
FROM      Portfolio_Projects.dbo.WorldCupPlayers p
GROUP BY  [Player Name]  
ORDER BY  [Number of Appearances] desc
