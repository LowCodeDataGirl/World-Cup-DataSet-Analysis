/*
Which players had the most successful scoring careers? How about the longest careers?
There are misspelled names in this dataset like M�LLER
There might be names owned by multiple people like Ronaldo(Add to data cleaning )
Which players had the longest careers?
select [Player Name] ,count([Player Name])--this query shows how many times a player appears in this dataset but without the year
from Portfolio_Projects.dbo.WorldCupPlayers--try joining it with the worldcupmaatches dataset and query out the same result 
group by [Player Name]
order by count([Player Name]) desc
Try count Players name and group by RoundID. Try count players and group by MatchId


select *
from Portfolio_Projects.dbo.WorldCupPlayers
where [Player Name] = 'OSCAR'
 */ 


--What do I want to do 
--remove wins from each country name in win conditions 
 --How has number of wins by country trended over time? check group by and partition by 



select [Year],[Win conditions],COUNT([Win conditions]) as NumberOfWins
from Portfolio_Projects.dbo.WorldCupMatches
where [Win conditions] not in ('Draw' )

GROUP BY [Year],[Win conditions]

order by [Year],[Win conditions]
 


 



 
 

  




 
 

 







 
 
 



      










 
          
 











 
 
