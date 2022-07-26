UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to update table 
SET
    [Stadium]  = CONCAT(SUBSTRING([Stadium],2, len([Stadium])-2), ' ', SUBSTRING([City],2, len([City])-2)),--confirm this query 
	[City] = [Home Team Name],
	[Home Team Name] = [Home Team Goals] ,
	 [Home Team Goals] = [Away Team Goals] ,
	  [Away Team Goals] =  [Away Team Name],
	 [Away Team Name] = [Win Conditions] ,
	[Win Conditions] = [Attendance] ,
	[Attendance] = [Half-time Home Goals],
    [Half-time Home Goals] = [Half-time Away Goals],
	[Referee] = [Assistant 1] ,
	[Assistant 1]= [Assistant 2],
	[Assistant 2] = [RoundID] ,
	[RoundID] = [MatchID],
	[MatchID] = [Home Team Initials],
	[Home Team Initials] = SUBSTRING([Away Team Initials], 1, 3) ,
	[Away Team Initials] = SUBSTRING([Away Team Initials], 5, 7)
    
where Stadium = '"FIFA World Cup Stadium'


select  MatchID, Count(MatchID) -- query to find duplicates per column 
from  [Portfolio_Projects ].[dbo].[WorldCupMatches]
group by MatchID
Having Count(MatchID) > 1


WITH cte AS (SELECT  [Year], ----query to remove duplicate rows 
		[Datetime],
		[Stage],
		[Stadium],
		[City],
		[Home Team Name],
		[Home Team Goals],
		[Away Team Goals],
		[Away Team Name],
		[Win conditions],
		[Attendance],
		[Half-time Home Goals],
		[Half-time Away Goals]
		[Referee],
		[Assistant 1],
		[Assistant 2],
		[RoundID],
		[MatchID],
        [Home Team Initials],
		[Away Team Initials] , ROW_NUMBER() OVER ( PARTITION BY [MatchID], [RoundID]
            ORDER BY 
                [MatchID],
				[RoundID]
        ) row_num
     FROM 
        [Portfolio_Projects ].[dbo].[WorldCupMatches]
)
DELETE FROM cte
WHERE row_num > 1


--Query to check for misspellings 
select *  
from  [Portfolio_Projects ].[dbo].[WorldCupMatches]
where  Stadium like '%¿½%'



--STADIUM UPDATE FOR MISSPELLINGS 


--query to update stadium mispelling from Stade Stade Vï¿½lodrome to  
 UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
SET
      [Stadium]  = 'Stade Velodrome'
	 
where Stadium = 'Stade Vï¿½lodrome'



--query to update stadium mispelling from Nou Camp - Estadio Leï¿½n to Estadio Leon 
UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]
SET
      [Stadium]  = 'Estadio Leon '
	 
where Stadium = 'Nou Camp - Estadio Leï¿½n'



--query to update stadium mispelling from "Estadio do Maracana"
UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]
SET
      [Stadium]  = 'Estadio do Maracana'
	 
where Stadium = 'Maracanï¿½ - Estï¿½dio Jornalista Mï¿½rio Filho'



--query to update stadium mispelling from "Estadio Olï¿½mpico Chateau Carreras" to "Estadio Mario Alberto Kempes"

UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
SET
      [Stadium]  = 'Estadio Mario Alberto Kempes'
	 
where Stadium = 'Estadio Olï¿½mpico Chateau Carreras'


--query to update stadium mispelling from "Estadio Josï¿½ Marï¿½a Minella" to " Estadio Jose Maria Minella"

UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
SET
      [Stadium]  = ' Estadio Jose Maria Minella '
	 
where Stadium = 'Estadio Josï¿½ Marï¿½a Minella'


--query to update stadium mispelling from "Estadio Olï¿½mpico Universitario" to "Estadio Olïmpico Universitario"

UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
SET
      [Stadium]  = 'Estadio Olïmpico Universitario'
	 
where Stadium = 'Estadio Olï¿½mpico Universitario'


--query to update stadium mispelling from "Estadio Municipal de Balaï¿½dos " to "Estadio Olïmpico Universitario"

UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
SET
      [Stadium]  = 'Estadio Municipal de Balaïdos'
	 
where Stadium = 'Estadio Municipal de Balaï¿½dos'


--query to check for spaces 
SELECT * FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
WHERE CHARINDEX(' ',Stadium) > 0  


--QUERY TO REMOVE TRAILING SPACES IN DATASET
UPDATE [Portfolio_Projects ].[dbo].[WorldCupMatches]
     
SET  
    Year = TRIM( Year),
    Datetime = TRIM(Datetime),
	Stage = TRIM(Stage),
	Stadium = TRIM(Stadium),
	City = TRIM(City),
	[Home Team Name] = TRIM([Home Team Name]),
	[Home Team Goals] = TRIM([Home Team Goals]),

	[Away Team Goals] = TRIM([Away Team Goals]),
	[Away Team Name] = TRIM([Away Team Name]),
	[Win conditions] = TRIM([Win conditions]),
	Attendance = TRIM(Attendance ),
	[Half-time Home Goals] = TRIM([Half-time Home Goals]),
	[Half-time Away Goals] = TRIM([Half-time Away Goals]),
	[Referee] = TRIM([Referee]),
	[Assistant 1] =TRIM ([Assistant 1]),
	[Assistant 2] =TRIM ([Assistant 2]),
	[RoundID] = TRIM([RoundID]),
	[MatchID] = TRIM([MatchID]),
	[Home Team Initials] = TRIM([Home Team Initials]),
	[Away Team Initials] = TRIM([Away Team Initials])

	--CITY QUERIES FOR MISSPELLINGS 

--Query to update Malmï¿½' to Malmo
UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
SET
      City  = 'Malmo'
	 
where City = 'Malmï¿½'


--Query to update Norrkï¿½Ping to Norrkoping
UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
SET
      City  = 'Norrkoping'
	 
where City = 'Norrkï¿½Ping'


--Query to update Dï¿½Sseldorf to Dusseldorf
UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
SET
      City  = 'Dusseldorf'
	 
where City = 'Dï¿½Sseldorf'

--Query to update La Coruï¿½A to La Coruna
UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
SET
      City  = 'La Coruna'
	 
where City = 'La Coruï¿½A'


--QUERY TO CHANGE WRONG INFO IN STADIUM COLUMNS FROM CITY TO STADIUM


select *--query to find wrong stadium name(It showed country instead of stadium)
from  [Portfolio_Projects ].[dbo].[WorldCupMatches]
where Stadium like'%"%'
order by City asc

UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to update stadium from munich to allianz arena
SET
      [Stadium]  =  'Allianz Arena'
WHERE Stadium = '"FIFA World Cup Stadium  Munich"'


UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to update stadium from Cologne" to RheinEnergieStadio 
SET
      [Stadium]  =  'RheinEnergieStadio'
WHERE Stadium = '"FIFA World Cup Stadium  Cologne"'


UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to update stadium from Dortmund" to Signal Iduna Park
SET
      [Stadium]  =  'Signal Iduna Park'
WHERE City = 'Dortmund'-- we used city because we also needed to update Westfalenstadion to Signal Iduna Park 


UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to update stadium from Frankfurt" to Signal Iduna Park
SET
      [Stadium]  =  'Deutsche Bank Park'
WHERE City = 'Frankfurt/Main'-- we used city because we also needed to update Waldstadion(old name) to Deutsche Bank Park(new name) 



UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to update stadium from Hamburg" to Volksparkstadion
SET
      [Stadium]  =  'Volksparkstadion'
WHERE Stadium = '"FIFA World Cup Stadium  Hamburg"'

UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to update stadium from Hanover" to HDI Arena
SET
      [Stadium]  =  'HDI Arena'
WHERE City = 'Hanover'-- we used city because we also needed to update Niedersachsenstadion(old name) to  HDI Arena(new name) 



UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to update stadium from Gelsenkirchen" to Veltins-Arena
SET
      [Stadium]  =  'Veltins-Arena'
WHERE Stadium = '"FIFA World Cup Stadium  Gelsenkirchen"'




UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to update home team name from  Cï¿½te d'Ivoire to Cote D'Ivoire
SET
      [Home Team Name]  = 'Cote d''Ivoire'
WHERE [Home Team Name] = 'Cote DIvoire' ----use double quotes because of the (') in cote d'ivoire to remove the error


select *
from [Portfolio_Projects ].[dbo].[WorldCupMatches]---- Query to update the match for thrd lace stage and make them uniform 
where Stage like '%Third%'
order by Year desc




UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to update home team name from  remove ("rn"">)
SET
      
      [Home Team Name]  =  SUBSTRING([Home Team Name],1, LEN([Home Team Name])-1) 
WHERE [Home Team Name] like '%"rn"">'  


 UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to join germany and germany fr 
SET
      
      [Home Team Name]  = 'Germany'
WHERE [Home Team Name] = 'Germany FR'  



 UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to join IR Iran and Iran
SET
      
      [Home Team Name]  = 'Iran'
WHERE [Home Team Name] = 'IR Iran'  


 UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to change korea dpr to north korea
SET
      
      [Home Team Name]  = 'North Korea'
WHERE [Home Team Name] = 'Korea DPR'  

UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to change Zaire to Congo DR 
SET
      
      [Home Team Name]  = 'Congo DR'
WHERE [Home Team Name] = 'Zaire'  



 UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to change korea dpr to north korea
SET
      
      [Home Team Name]  = 'South Korea'
WHERE [Home Team Name] = 'Korea Republic'  


 UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to change China PR to China 
SET
      
      [Home Team Name]  = 'China'
WHERE [Home Team Name] = 'China PR'  


UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to update away team name from  remove ("rn"">)
SET-- update runs the first seven word removal but not the remove letter N 
      
      [Away Team Name]  =  SUBSTRING([Away Team Name],1, LEN([Away Team Name])-1) 
WHERE [Away Team Name] like '%"%'  


 --Query to update away teamname  Cï¿½te d'Ivoire to Cote d''Ivoire
UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches] 
SET
      [Away Team Name]  = 'Cote d''Ivoire'
	 
where [Away Team Name] = 'Cï¿½te d''Ivoire' --use double apostrophe cause of the cote divoire 



--CHANGE TO DETAILS IN AWAY TEAM COLUMN 

 UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to join germany and germany fr 
SET
      
      [Away Team Name]  = 'Germany'
WHERE [Away Team Name] = 'Germany FR'  



 UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to join IR Iran and Iran
SET
      
     [Away Team Name]  = 'Iran'
WHERE [Away Team Name] = 'IR Iran'  


 UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to change korea dpr to north korea
SET
      
     [Away Team Name]  = 'North Korea'
WHERE [Away Team Name] = 'Korea DPR'  


 UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to change korea dpr to north korea
SET
      
      [Away Team Name]  = 'South Korea'
WHERE [Away Team Name] = 'Korea Republic'  


 UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to change China PR to China 
SET
      
      [Away Team Name]  = 'China'
WHERE [Away Team Name] = 'China PR'  

UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--query to change  Zaire to Congo DR 
SET
      
      [Away Team Name]  = 'Congo DR'
WHERE [Away Team Name] = 'Zaire'  




 select * --query to find misspellings in away team name 
 from  [Portfolio_Projects ].[dbo].[WorldCupMatches]
 where [Away Team Name] like '%¿½%'
 