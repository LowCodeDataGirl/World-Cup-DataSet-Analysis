--WORLD CUP MATCHES DATA CLEANING 
 
 /*Query To Update The Columns With Inaccurate Data
 
 Most of the information in the columns for the year 2006 is incomplete or missplaced,
and the following query updates the table with the correct inputs.
Most of the information in the "Stadium" column is incomplete, 
while "Away Team Initials" has data for both the "Home Team Initials" and the "Away Team Initials" 
*/

UPDATE [Portfolio_Projects ].[dbo].[WorldCupMatches] 
SET
       [Stadium]              = CONCAT([Stadium], ' ', [City]),--"FIFA World Cup Stadium + City" is the complete stadium Name   
       [City]                 = [Home Team Name],
       [Home Team Name]       = [Home Team Goals] ,
       [Home Team Goals]      = [Away Team Goals] ,
       [Away Team Goals]      =  [Away Team Name],
       [Away Team Name]       = [Win Conditions] ,
       [Win Conditions]       = [Attendance] ,
       [Attendance]           = [Half-time Home Goals],
       [Half-time Home Goals] = [Half-time Away Goals],
       [Referee]              = [Assistant 1] ,
       [Assistant 1]          = [Assistant 2],
       [Assistant 2]          = [RoundID] ,
       [RoundID]              = [MatchID],
       [MatchID]              = [Home Team Initials],
       [Home Team Initials]   = SUBSTRING([Away Team Initials], 1, 3) ,--This query removes the first three initials from [Away Team Initials] to  [Home Team Initials]
       [Away Team Initials]   = SUBSTRING([Away Team Initials], 5, 7) --This query updates the table with the last three initials only
    
where Stadium = '"FIFA World Cup Stadium' --Use "FIFA Stadium... instead of [Year] because to not affect the few correct entries in that year



/*
Query To Find Duplicates Per Column 

The total number of rows were X but a select distinct of those columns returned Y number of rows
This query checks for duplicates in the table 
*/

SELECT    MatchID, Count(MatchID) 
FROM      [Portfolio_Projects ].[dbo].[WorldCupMatches]
GROUP BY  MatchID
HAVING    Count(MatchID) > 1





/*
Query To Remove Duplicate Rows 

This query removes all the duplicates in the table 
*/

WITH cte AS (SELECT  [Year], 
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
		     [RoundID] ) row_num
		     
        FROM 
	
[Portfolio_Projects ].[dbo].[WorldCupMatches]
)
DELETE FROM cte
WHERE row_num > 1



/*
Query To Check For Misspellings 

There are some Stadium names, cites and team names are wrongly spelt in the table. 
This query checcks for misspellings in Stadium, city, Home Team Nmae and Away Team Name 
*/


SELECT *  
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches]
WHERE [Stadium] like '%¿½%' --This is the common feature amongsts all the misspelled words in Stadium

SELECT *  
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches]
WHERE  [City] like '%¿½%' --This is the common feature amongsts all the misspelled words in City

SELECT *  
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches]
WHERE [Home Team Name] like '%¿½%' --This is the common feature amongsts all the misspelled words in Home Team Name


SELECT *  
FROM  [Portfolio_Projects ].[dbo].[WorldCupMatches]
WHERE [Away Team Name] like '%¿½%' --This is the common feature amongsts all the misspelled words in Away Team Name



-- Query To Update The Stadium Column with correct values


 UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches] -- From Stade Vï¿½lodrome to Stade Velodrome
SET
      [Stadium]  = 'Stade Velodrome'
	 
where Stadium = 'Stade Vï¿½lodrome'



UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]-- From Nou Camp - Estadio Leï¿½n to Estadio Leon 
SET
      [Stadium]  = 'Estadio Leon '
	 
where Stadium = 'Nou Camp - Estadio Leï¿½n'



UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--From  'Maracanï¿½ - Estï¿½dio Jornalista Mï¿½rio Filho' to  "Estadio do Maracana"
SET
      [Stadium]  = 'Estadio do Maracana'
	 
where Stadium = 'Maracanï¿½ - Estï¿½dio Jornalista Mï¿½rio Filho'


UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--From "Estadio Olï¿½mpico Chateau Carreras" to "Estadio Mario Alberto Kempes"
SET
      [Stadium]  = 'Estadio Mario Alberto Kempes'
	 
where Stadium = 'Estadio Olï¿½mpico Chateau Carreras'


UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--From "Estadio Josï¿½ Marï¿½a Minella" to " Estadio Jose Maria Minella"
SET
      [Stadium]  = ' Estadio Jose Maria Minella '
	 
where Stadium = 'Estadio Josï¿½ Marï¿½a Minella'


UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]-- From "Estadio Olï¿½mpico Universitario" to "Estadio Olïmpico Universitario"
SET
      [Stadium]  = 'Estadio Olïmpico Universitario'
	 
where Stadium = 'Estadio Olï¿½mpico Universitario'


UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--From "Estadio Municipal de Balaï¿½dos " to "Estadio Olïmpico Universitario"

SET
      [Stadium]  = 'Estadio Municipal de Balaïdos'
	 
where Stadium = 'Estadio Municipal de Balaï¿½dos'



--Query To Update The City Column with correct values

UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--From Malmï¿½' to Malmo
SET
      City  = 'Malmo'
	 
where City = 'Malmï¿½'


UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--From Norrkï¿½Ping to Norrkoping
SET
      City  = 'Norrkoping'
	 
where City = 'Norrkï¿½Ping'


UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--From Dï¿½Sseldorf to Dusseldorf
SET
      City  = 'Dusseldorf'
	 
where City = 'Dï¿½Sseldorf'


UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--From La Coruï¿½A to La Coruna
SET
      City  = 'La Coruna'
	 
where City = 'La Coruï¿½A'



--Query To Update The Home Team Name Column with correct values

UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]--From  Cï¿½te d'Ivoire to Cote D'Ivoire
SET
      [Home Team Name]  = 'Cote d''Ivoire' --use double quotes because of the (') in cote d'ivoire which will return an error without the extra (')
WHERE [Home Team Name] = 'Cï¿½te d''Ivoire' 



 --Query To Update Away Team Name Column With Correct Values
 
UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]-- Cï¿½te d'Ivoire To Cote d''Ivoire
SET
      [Away Team Name]  = 'Cote d''Ivoire'
	 
where [Away Team Name] = 'Cï¿½te d''Ivoire' -- use double quotes because of the (') in cote d'ivoire which will return an error without the extra (')




/* Query To Remove extra characters in the [Home Team Name] Column and [Away Team Name] columns
Both Columns have some extra characters ("rn"">) in front and (") extra character behind 
The Queries below remove the extra characters in the columns
*/

UPDATE  [Portfolio_Projects ].[dbo].[WorldCupMatches]  
SET
      
      [Home Team Name]  =  SUBSTRING([Home Team Name],1, LEN([Home Team Name])-1) 
WHERE [Home Team Name] like '%"rn"">'  
























--QUERY TO CHANGE WRONG INFO IN STADIUM COLUMNS FROM CITY TO STADIUM
-- Query To Update Column Names

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
 
 
 select *
from [Portfolio_Projects ].[dbo].[WorldCupMatches]---- Query to update the match for thrd lace stage and make them uniform 
where Stage like '%Third%'
order by Year desc
