/*
Do any teams seem to be stronger in either the first half or the second half? (think about both offense and defense)
 I had to create a CTE to create the table with the tables i needed to answer this question.
The name of the CTE is HalfTimeGoals and I got the 2nd half goals by subtracting Home team goals and 1st half goals 
 */
 /* What i was trying to do 

 I was trying to sum the result of both queries below using subqueries 
 
SELECT [Home Team Name], SUM([Number of 1st Half Wins] ) AS [Number of 1st Half Wins] 
FROM (SELECT [Home Team Name], COUNT([Half-time Home Goals]) AS [Number of 1st Half Wins] 
       FROM Portfolio_Projects.dbo.WorldCupMatches
	   WHERE [Half-time Home Goals] > [Half-time Away Goals]
	  union all 
	   SELECT [Away Team Name], COUNT([Half-time Away Goals]) AS [Number of 1st Half  Wins] 
FROM Portfolio_Projects.dbo.WorldCupMatches
WHERE [Half-time Away Goals] > [Half-time Home Goals]) y
GROUP BY  [Home Team Name]




ON [Portfolio_Projects.dbo.WorldCupMatches.Home Team Name[ = 
 



SELECT [Home Team Name], COUNT([Half-time Home Goals]) AS [Number of 1st Half Wins] 
FROM Portfolio_Projects.dbo.WorldCupMatches
WHERE [Half-time Home Goals] > [Half-time Away Goals]
GROUP BY  [Home Team Name] ) 
order by [Number of 1st Half Home Wins] desc



SELECT [Away Team Name], COUNT([Half-time Away Goals]) AS [Number of 1st Half  Wins] 
FROM Portfolio_Projects.dbo.WorldCupMatches
WHERE [Half-time Away Goals] > [Half-time Home Goals]
GROUP BY  [Away Team Name] ) as hii
order by [Number of 1st Half Away Wins] desc












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
 

--Find a query to sum the results of both query by Country. Try adding just union all to both queries and selecting all from there 





 /*
This query shows the strongest offense team in the first half of the World Cup Matches byy how many times they've won the first half 
NOTE:I wanted to find the average at first because of teams that do not have a lot of appearances but Kelvin Said its best not to that in football those done really really matter .  
*/



--There are misspelled names in this dataset like M�LLER
--There might be names owned by multiple people like Ronaldo(Add to data cleaning )

--Which players had the longest careers?
select [Player Name] ,count([Player Name])--this query shows how many times a player appears in this dataset but without the year
from Portfolio_Projects.dbo.WorldCupPlayers--try joining it with the worldcupmaatches dataset and query out the same result 
group by [Player Name]
order by count([Player Name]) desc
--Try count Players name and group by RoundID. Try count players and group by MatchId
--

select *
from Portfolio_Projects.dbo.WorldCupPlayers
where [Player Name] = 'OSCAR'


/*

Which players had the most successful scoring careers?  
How can I find the players with the most goals 
Join with world cup matches and pre-view---I couldnt find anything from joining the datraset
*/

 
