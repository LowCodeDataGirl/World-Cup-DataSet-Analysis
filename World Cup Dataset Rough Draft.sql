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
 */ 




--What I want to do nex time i open this page 
--Change the names one by one but one country at a time 
--finish cleaning this and start the one with double '

--Surnames in Capital letter
--Update the table with correct names one by one 


 
SELECT  *
FROM  Portfolio_Projects.dbo.WorldCupPlayers p
JOIN Portfolio_Projects.dbo.WorldCupMatches m  ON  m.MatchID = p.MatchID
 where [Player Name]  like  '%KJï¿½R%'  





 
SELECT   distinct *
FROM  Portfolio_Projects.dbo.WorldCupPlayers p
JOIN Portfolio_Projects.dbo.WorldCupMatches m  ON  m.MatchID = p.MatchID
 where [Player Name]  like  '%ï¿½%'   and [Team Initials] = 'COL'
 ORDER BY [Team Initials]  



--ARGENTINA

--This query updates player name from C. ZUï¿½IGA to JUAN SEBASTIAN VERON
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'JUAN SEBASTIAN VERON'
 
where [Player Name] = 'C. ZUï¿½IGA'  


--This query updates player name from BOLAï¿½O to MICHAEL UMANA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'MICHAEL UMANA'
 
where [Player Name] = 'BOLAï¿½O'  


--This query updates player name from BOLAï¿½OS C. to CHRISTIAN BOLANOS
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'CHRISTIAN BOLANOS'
 
where [Player Name] = 'BOLAï¿½OS C.'  


 

 
 

 







 
 
 



      










 
          
 











 
 
