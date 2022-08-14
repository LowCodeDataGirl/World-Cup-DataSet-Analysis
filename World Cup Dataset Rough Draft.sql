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







/*

SELECT   distinct *
FROM  Portfolio_Projects.dbo.WorldCupPlayers p
JOIN Portfolio_Projects.dbo.WorldCupMatches m  ON  m.MatchID = p.MatchID
 where [Player Name]  like  '%ï¿½%'   and [Team Initials] = 'GER'
 group by 


--449 d

/*
Cameroon 
 PENSï¿½E - Michel PENSEE
 MAHOUVï¿½ - Marcel MAHOUVE
 OLEMBï¿½ - Salomon OLEMBE
 WOMï¿½ - Pierre WOME

 
 MATTHï¿½US- 8
 Kï¿½PKE
 Hï¿½SSLER
 Wï¿½RNS
 Mï¿½LLER
 Hï¿½SSLER
 MATTHï¿½US
 Kï¿½PKE
 

*/






 
SELECT  *
FROM  Portfolio_Projects.dbo.WorldCupPlayers p
JOIN Portfolio_Projects.dbo.WorldCupMatches m  ON  m.MatchID = p.MatchID
 where [Player Name]  like  '%ALLBï¿½CK%'   
 
 --

 --


select   *
from Portfolio_Projects.dbo.WorldCupPlayers
where [Player Name] = 'Ze ROBERTO' and [Shirt Number] = 11
 


--This query updates player name  from ETAMï¿½ to Lauren ETAME MAYER 
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Lauren ETAME MAYER'
 
where [Player Name] = 'ETAMï¿½'   
 


  




 
 

 







 
 
 



      










 
          
 











 
 
