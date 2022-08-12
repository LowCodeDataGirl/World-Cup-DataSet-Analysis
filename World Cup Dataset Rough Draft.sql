
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



 
 /* This query finds the most offensive teams in the second half of the world cup. It sums the result of 
( home teams that scored the most(offensive) in first half + away team that scored the most(offensive) in first half )
I had to dig through google and stackoverflow to make this work. If there are better queries to do this, Im open   
 
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

 
