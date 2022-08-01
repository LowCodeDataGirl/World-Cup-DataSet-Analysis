


--Do Certain Cities Draw Bigger Crowds

--The Top results in this query will show which cities had the most attendance on average.

SELECT   AVG(CAST(Attendance as int)) as [AvgCityAtt],[City]  
FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [City]
ORDER BY [AvgCityAtt] DESC


--The Top results in this query will show which cities have the most crowd on average

SELECT   SUM(CAST(Attendance as int)) AS SumCityAtt, [City]
FROM     [Portfolio_Projects ].[dbo].[WorldCupMatches]
GROUP BY [City]
ORDER BY [SumCityAtt] DESC



--How Has Attendance Trended Over Time
(This query gives the attendance total per year)

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
 

SELECT [Home Team Name],SUM( cast ([Half-time Home Goals] as int)) as SumHalfTimeGoals  
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [Home Team Name]
Order by [SumHalfTimeGoals] DESC

 

SELECT [Away Team Name],SUM(cast ([Half-time Away Goals] as int)) as SumHalfTimeGoals  
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
GROUP BY [Away Team Name]
Order by [SumHalfTimeGoals] DESC





--Do any teams seem to be stronger in either the first half or the second half? (think about both offense and defense)

