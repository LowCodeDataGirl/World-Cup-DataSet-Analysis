
--In these update queries, I used name snd shirt number to be careful incase there are players with smilar names and errors
--This query updates player name Z� CARLOS to Ze Carlos 
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Ze Carlos'
 
where [Player Name] = 'Z� CARLOS' and [Shirt Number] = 13



--This query updates player name  from GON�ALVES to Goncalves
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Goncalves'
 
where [Player Name] = 'GON�ALVES' and [Shirt Number] = 14


--This query updates player name  from Z� ROBERTO to Ze Roberto
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Ze Roberto'
 
where [Player Name] = 'Z� ROBERTO'  --he played as number 11 and 16 in 1998 and 2006 



--This query updates player name  from �STENSTAD to Egil OSTENSTAD
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Egil OSTENSTAD'
 
where [Player Name] = '�STENSTAD'  


--This query updates player name  from GROD�S to  Frode GRODAS
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Frode GRODAS'
 
where [Player Name] = 'GROD�S'  
 


 --This query updates player name  from  SOLSKJ�R to   Ole GUNNAR SOLSKJAER
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = ' Ole GUNNAR SOLSKJAER'
 
where [Player Name] = 'SOLSKJ�R'  



--This query updates player name  from   BJ�RNEBYE to Stig INGE BJORNEBYE
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Stig INGE BJORNEBYE'
 
where [Player Name] = 'BJ�RNEBYE'  


--This query updates player name  from  CASTA�EDA to  CASTANEDA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'CASTANEDA'
 
where [Player Name] = 'CASTA�EDA'  



--This query updates player name  from ACU�A to Clarence ACUNA 
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Clarence ACUNA '
 
where [Player Name] = 'ACU�A'  and [Shirt Number] = 8




--This query updates player name  from ACU�A to Roberto ACUNA(Paraguay)
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Roberto ACUNA'
 
where [Player Name] = 'ACU�A'  and [Shirt Number] = 10




--This query updates player name  from ETAM� to Lauren ETAME MAYER 
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Lauren ETAME MAYER'
 
where [Player Name] = 'ETAM�'   






