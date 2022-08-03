/*
Do any teams seem to be stronger in either the first half or the second half? (think about both offense and defense)
 I had to create a CTE to create the table with the tables i needed to answer this question.
The name of the CTE is HalfTimeGoals and I got the 2nd half goals by subtracting Home team goals and 1st half goals 
 */

WITH HalfTimeGoals   --This query gives the result of the home teams with the most first half wins    

([Home Team Name],
[1st Half Home Goals],
[2nd Half Home Goals],
[Home Team Goals],
[Away Team Name],
[1st Half Away Goals],
[2nd Half Away Goals],
[Away Team Goals]
)
AS
(
SELECT     [Home Team Name],
           cast([Half-time Home Goals]as int) as [1st Half Home Goals],
           cast([Home Team Goals] as int)-cast([Half-time Home Goals] as int) as [2nd Half Home Goals],
		   cast([Home Team Goals]as int),
		   [Away Team Name],
		   cast([Half-time Away Goals]as int) as [1st Half Away Goals],
		   cast([Away Team Goals]as int)- cast([Half-time Away Goals]as int) as [2nd Half Away Goals],
		   cast([Away Team Goals]as int)

 FROM [Portfolio_Projects].[dbo].[WorldCupMatches]
 )

 SELECT [Home Team Name], COUNT([1st Half Home Goals]) AS [Number of 1st Half Home Wins]
 FROM  HalfTimeGoals 
 WHERE [1st Half Home Goals] > [1st Half Away Goals]--the format for offense was when 
 GROUP BY [Home Team Name]
 ORDER BY [Number of 1st Half Home Wins] DESC
 

WITH HalfTimeGoals   --This query gives the result of the away teams with the most first half wins    

([Home Team Name],
[1st Half Home Goals],
[2nd Half Home Goals],
[Home Team Goals],
[Away Team Name],
[1st Half Away Goals],
[2nd Half Away Goals],
[Away Team Goals]
)
AS
(
SELECT     [Home Team Name],
           cast([Half-time Home Goals]as int) as [1st Half Home Goals],
           cast([Home Team Goals] as int)-cast([Half-time Home Goals] as int) as [2nd Half Home Goals],
		   cast([Home Team Goals]as int),
		   [Away Team Name],
		   cast([Half-time Away Goals]as int) as [1st Half Away Goals],
		   cast([Away Team Goals]as int)- cast([Half-time Away Goals]as int) as [2nd Half Away Goals],
		   cast([Away Team Goals]as int)

 FROM [Portfolio_Projects].[dbo].[WorldCupMatches]
 )

 SELECT [Home Team Name], COUNT([1st Half Away Goals]) AS [Number of 1st Half Away Wins]
 FROM  HalfTimeGoals 
 WHERE [1st Half Away Goals] > [2nd Half Away Goals]--the format for offense was when 
 GROUP BY [Home Team Name]
 ORDER BY [Number of 1st Half Away Wins] DESC
 

--Find a query to sum the results of both query by Country 


 


 /*
This query shows the strongest offense team in the first half of the World Cup Matches byy how many times they've won the first half 
NOTE:I wanted to find the average at first because of teams that do not have a lot of appearances but Kelvin Said its best not to that in football those done really really matter .  
*/

  














 
WITH HalfTimeGoals01        

(
[MatchID],
[Home Team Name],
[1st Half Home Goals],
[2nd Half Home Goals],
[Home Team Goals]
 
)
AS
(
SELECT 
[MatchID],
[Home Team Name],
                      cast([Half-time Home Goals]as int) as [1st Half Home Goals],
                      cast([Home Team Goals] as int)-cast([Half-time Home Goals] as int) as [2nd Half Home Goals],
		              cast([Home Team Goals]as int)
					 
					 
				
FROM [Portfolio_Projects].[dbo].[WorldCupMatches]), 

         HalfTimeGoals02   (  

       [MatchID],
	   [Away Team Name],
        [1st Half Away Goals],
        [2nd Half Away Goals],
        [Away Team Goals]
		 
)
AS
(
SELECT  
           [MatchID],
		   [Away Team Name],
		   cast([Half-time Away Goals]as int) as [1st Half Away Goals],
		   cast([Away Team Goals]as int)- cast([Half-time Away Goals]as int) as [2nd Half Away Goals],
		   cast([Away Team Goals]as int)
		   
 FROM [Portfolio_Projects].[dbo].[WorldCupMatches]
 )

 SELECT  *
 FROM  HalfTimeGoals01
 union all
 select *
 from   HalfTimeGoals02









