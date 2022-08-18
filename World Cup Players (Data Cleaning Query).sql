
--This query finds the misspelled names in the [Players Name] column 

SELECT    *
FROM  Portfolio_Projects.dbo.WorldCupPlayers p
JOIN Portfolio_Projects.dbo.WorldCupMatches m  ON  m.MatchID = p.MatchID
 where  [Player Name]  like  '%ï¿½%' and [Team Initials] = 'CMR'
 ORDER BY [Team Initials] 







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




--This query updates player name  from MATTHï¿½US to Lothar MATTHAEUS
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Lothar MATTHAEUS'
 
where [Player Name] = 'MATTHï¿½US'   



--This query updates player name  from Kï¿½PKE to  Andreas KOPKE
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = ' Andreas KOPKE'
 
where [Player Name] = 'Kï¿½PKE'   


--This query updates player name  from  PENSï¿½E TO Michel PENSEE
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Michel PENSEE'
 
where [Player Name] = 'PENSï¿½E'   


--This query updates player name  from   MAHOUVï¿½  to Marcel MAHOUVE
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Marcel MAHOUVE'
 
where [Player Name] = 'MAHOUVï¿½'   




--This query updates player name  from  OLEMBï¿½  to Salomon OLEMBE
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Salomon OLEMBE'
 
where [Player Name] = 'OLEMBï¿½'   
 



 --This query updates player name  from  WOMï¿½  to Pierre WOME
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Pierre WOME'
 
where [Player Name] = 'WOMï¿½'   
 

 
--This query updates player name  from  Hï¿½SSLER to Thomas HABLER
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Thomas HABLER'
 
where [Player Name] = 'Hï¿½SSLER'   



--This query updates player name  from  Wï¿½RNS to Christian WORNS
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Christian WORNS'
 
where [Player Name] = 'Wï¿½RNS'   




--This query updates player name  from Mï¿½LLER to Andreas MOLLER
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Andreas MOLLER'
 
where [Player Name] = 'Mï¿½LLER' and [Shirt Number] = 7-- There is moller and muller with same error one with shirt number 7 and the other 13 



--This query updates player name  from Mï¿½LLER to Thomas MULLER
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Thomas MULLER'
 
where [Player Name] = 'Mï¿½LLER' and [Shirt Number] = 13





--This query updates player name  from KIEï¿½LING to Stefan KIEBLING
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Stefan KIEBLING'
 
where [Player Name] = 'KIEï¿½LING'  




--This query updates player name  from ï¿½ZIL to Mesut OZIL
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Mesut OZIL'
 
where [Player Name] = 'ï¿½ZIL' 


--This query updates player name  from SCHï¿½RRLE to Andre SCHURRLE
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Andre SCHURRLE'
 
where [Player Name] = 'SCHï¿½RRLE'  




--This query updates player name  from Gï¿½TZE to Mario GOTZE
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Mario GOTZE'
 
where [Player Name] = 'Gï¿½TZE'  



--This query updates player name  from GROï¿½KREUTZ to Kevin GROBKREUTZ
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Kevin GROBKREUTZ'
 
where [Player Name] = 'GROï¿½KREUTZ'  




--This query updates player name  from Hï¿½WEDES to Benedikt HOWEDES
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Benedikt HOWEDES'
 
where [Player Name] = 'Hï¿½WEDES'  





--ANGOLA 

--This query updates player name  from LAMï¿½ to LAMA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'LAMA'
 
where [Player Name] = 'LAMï¿½'  



--This query updates player name  from FLï¿½VIO to FLAVIO
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'FLAVIO'
 
where [Player Name] = 'FLï¿½VIO'  




--This query updates player name  from  AKWï¿½ to AKWA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'AKWA'
 
where [Player Name] = 'AKWï¿½'  



--This query updates player name  from  Mï¿½RIO to MARIO
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'MARIO'
 
where [Player Name] = 'Mï¿½RIO' and [Shirt Number] = 22


--This query updates player name  from  JOï¿½O RICARDO to JOAO RICARDO
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'JOAO RICARDO'
 
where [Player Name] = 'JOï¿½O RICARDO'  



--This query updates player name from Zï¿½ KALANGA to Ze KALANGA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Ze KALANGA'
 
where [Player Name] = 'Zï¿½ KALANGA'  



--This query updates player name from LOCï¿½ to LOCO
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'LOCO'
 
where [Player Name] = 'LOCï¿½'  



--This query updates player name from ANDRï¿½ MACANGA to ANDRE MACANGA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'ANDRE MACANGA'
 
where [Player Name] = 'ANDRï¿½ MACANGA'  





--BRA

--This query updates player name from PELï¿½ (Edson Arantes do Nascimento) to PELE
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'PELE'
 
where [Player Name] = 'PELï¿½ (Edson Arantes do Nascimento)'  


--This query updates player name from LUISï¿½O to LUISAO
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'LUISAO'
 
where [Player Name] = 'LUISï¿½O'  


--This query updates player name from JOSUï¿½ to JOSUE
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'JOSUE'
 
where [Player Name] = 'JOSUï¿½'  



--This query updates player name from ROMï¿½RIO (Romï¿½rio de Souza Faria) to ROMARIO
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'ROMARIO'
 
where [Player Name] = 'ROMï¿½RIO (Romï¿½rio de Souza Faria)'  


--This query updates player name from Jï¿½ to JO
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'JO'
 
where [Player Name] = 'Jï¿½'  


--This query updates player name from KAKï¿½ to KAKA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'KAKA'
 
where [Player Name] = 'KAKï¿½'  


--This query updates player name from Lï¿½CIO to LUCIO
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'LUCIO'
 
where [Player Name] = 'Lï¿½CIO'  





--BIH 

--This query updates player name from MUJDï¿½A to MENSUR MUJDZA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'MENSUR MUJDZA'
 
where [Player Name] = 'MUJDï¿½A'  


--This query updates player name from VIï¿½?A to EDIN VISCA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'EDIN VISCA'
 
where [Player Name] = 'VIï¿½?A'  


  

--This query updates player name from VRANJEï¿½ to OGNJEN VRANJES
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'OGNJEN VRANJES'
 
where [Player Name] = 'VRANJEï¿½'  


--This query updates player name from Dï¿½EKO to EDIN DZEKO
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'EDIN DZEKO'
 
where [Player Name] = 'Dï¿½EKO'  


--This query updates player name from SUï¿½I? to  TINO-SVEN SUSIC
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'TINO-SVEN SUSIC'
 
where [Player Name] = 'SUï¿½I?'  



--This query updates player name from HADï¿½I? to ANEL HADZIC
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'ANEL HADZIC'
 
where [Player Name] = 'HADï¿½I?'  


--This query updates player name from VRï¿½AJEVI? to AVDIJA VRSAJEVIC
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'AVDIJA VRSAJEVIC'
 
where [Player Name] = 'VRï¿½AJEVI?'  


--This query updates player name from ï¿½UNJI? to   
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'TONI SUNJIC'
 
where [Player Name] = 'ï¿½UNJI?'  


--This query updates player name from KOLAï¿½INAC to SEAD KOLASINAC
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = ' SEAD KOLASINAC'
 
where [Player Name] = 'KOLAï¿½INAC'  


--This query updates player name from BEï¿½I? to MUHAMED BESIC
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'MUHAMED BESIC'
 
where [Player Name] = 'BEï¿½I?'  


--This query updates player name from IBIï¿½EVI? to VEDAD IBISEVIC 
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'VEDAD IBISEVIC'
 
where [Player Name] = 'IBIï¿½EVI?'  



--This query updates player name from KOLAï¿½INAC to SEAD KOLASINAC
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = ' SEAD KOLASINAC'
 
where [Player Name] = 'KOLAï¿½INAC'  


--This query updates player name from BEï¿½I? to MUHAMED BESIC
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'MUHAMED BESIC'
 
where [Player Name] = 'BEï¿½I?'  


--This query updates player name from IBIï¿½EVI? to VEDAD IBISEVIC 
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'VEDAD IBISEVIC'
 
where [Player Name] = 'IBIï¿½EVI?'  




--This query updates player name from SIMï¿½O to SIMAO
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'SIMAO'
 
where [Player Name] = 'SIMï¿½O'  


--This query updates player name from F. COENTRï¿½O to FABIO COENTRAO
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'FABIO COENTRAO'
 
where [Player Name] = 'F. COENTRï¿½O'  


--This query updates player name from ï¿½DER to EDER
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'EDER'
 
where [Player Name] = 'ï¿½DER'  



--SLOVENIA


--This query updates player name from Dï¿½INI? to ELVEDIN DZINIC
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'ELVEDIN DZINIC'
 
where [Player Name] = 'Dï¿½INI?'  


--This query updates player name from ï¿½ULER to MARKO SULER
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'MARKO SULER'
 
where [Player Name] = 'ï¿½ULER'  


--This query updates player name from ï¿½ELIGA to ALEKSANDER SELIGA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'ALEKSANDER SELIGA'
 
where [Player Name] = 'ï¿½ELIGA' 

--This query updates player name from MATAVï¿½ to TIM MATAVZ
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'TIM MATAVZ'
 
where [Player Name] = 'MATAVï¿½'  




--SERBIA


--This query updates player name from MILIJAï¿½ to NENAD MILIJAS
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'NENAD MILIJAS'
 
where [Player Name] = 'MILIJAï¿½'  


--This query updates player name from TOï¿½I? to ZORAN TOSIC
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'ZORAN TOSIC'
 
where [Player Name] = 'TOï¿½I?'  


--This query updates player name from ï¿½IGI? to NIKOLA ZIGIC
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'NIKOLA ZIGIC'
 
where [Player Name] = 'ï¿½IGI?'  



--SPAIN


--This query updates player name from PIQUï¿½ to GERARD PIQUE
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'GERARD PIQUE'
 
where [Player Name] = 'PIQUï¿½'  


--This query updates player name from ETXEBERRï¿½A to ETXEBERRIA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'ETXEBERRIA'
 
where [Player Name] = 'ETXEBERRï¿½A'  


--This query updates player name from CAï¿½IZARES to CANIZARES
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'CANIZARES'
 
where [Player Name] = 'CAï¿½IZARES'  


 --This query updates player name from JAVI MARTï¿½NEZ to JAVI MARTINEZ
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'JAVI MARTINEZ'
 
where [Player Name] = 'JAVI MARTï¿½NEZ'  


--This query updates player name from Fï¿½BREGAS to CESC FABREGAS
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'CESC FABREGAS'
 
where [Player Name] = 'Fï¿½BREGAS'  



--MEXICO
--This query updates player name from Hugo Sï¿½NCHEZ to Hugo SANCHEZ
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'Hugo SANCHEZ'
 
where [Player Name] = 'Hugo Sï¿½NCHEZ'  


--This query updates player name from C. PEï¿½A to CARLOS PENA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'CARLOS PENA'
 
where [Player Name] = 'C. PEï¿½A'  





--DENMARK

 
--This query updates player name from KJï¿½R to SIMON KJAER
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'SIMON KJAER'
 
where [Player Name] = 'KJï¿½R'  

 

--This query updates player name from GRï¿½NKJï¿½R to JESPER CHRISTIANSEN
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'SIMON KJAER'
 
where [Player Name] = 'GRï¿½NKJï¿½R'  


--This query updates player name from Sï¿½RENSEN to THOMAS SORENSEN
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'THOMAS SORENSEN'
 
where [Player Name] = 'Sï¿½RENSEN'  


--This query updates player name from Jï¿½RGENSEN to  MARTIN JORGENSEN
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'MARTIN JORGENSEN'
 
where [Player Name] = 'Jï¿½RGENSEN'  


--This query updates player name from KRï¿½LDRUP to PER KROLDRUP
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'PER KROLDRUP'
 
where [Player Name] = 'KRï¿½LDRUP'  







--SWEDEN

--This query updates player name from ALLBï¿½CK to MARCUS ALLBACK
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'MARCUS ALLBACK'
 
where [Player Name] = 'ALLBï¿½CK'  


--This query updates player name from ALVBï¿½GE to JOHN ALVBAGE
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'JOHN ALVBAGE'
 
where [Player Name] = 'ALVBï¿½GE'  


--This query updates player name from Jï¿½RGENSEN to KIM KALLSTROM 
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'MARTIN JORGENSEN'
 
where [Player Name] = 'Kï¿½LLSTRï¿½M'  


 


--CHILE 

--This query updates player name from GUTIï¿½RREZ to FELIPE GUTIERREZ
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'FELIPE GUTIERREZ'
 
where [Player Name] = 'GUTIï¿½RREZ'  


--This query updates player name from CH. ARï¿½NGUIZ to CHARLES ARANGUIZ
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'CHARLES ARANGUIZ'
 
where [Player Name] = 'CH. ARï¿½NGUIZ'  



--PARAGUAY

--This query updates player name from NUï¿½EZ to JORGE NUNEZ
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'JORGE NUNEZ'
 
where [Player Name] = 'NUï¿½EZ'  


--This query updates player name from CABAï¿½AS to SALVADOR CABANAS
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'SALVADOR CABANAS'
 
where [Player Name] = 'CABAï¿½AS'  


--This query updates player name from CAï¿½IZA to DENIS CANIZA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'DENIS CANIZA'
 
where [Player Name] = 'CAï¿½IZA'  


--This query updates player name from Cï¿½CERES to JULIO CACERES
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'JULIO CACERES'
 
where [Player Name] = 'Cï¿½CERES'  
 




--CROATIA

--This query updates player name from SUBAï¿½I? to DANIEL SUBASIC
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'DANIEL SUBASIC'
 
where [Player Name] = 'SUBAï¿½I?'  


--This query updates player name from MANDï¿½UKI? to MARIO MANDZUKIC
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'MARIO MANDZUKIC'
 
where [Player Name] = 'MANDï¿½UKI?'  


--This query updates player name from PERIï¿½I? to IVAN PERISIC
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'IVAN PERISIC'
 
where [Player Name] = 'PERIï¿½I?'  




--COSTA RICA


--This query updates player name from UREï¿½A M. to MARCOS URENA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'MARCOS URENA'
 
where [Player Name] = 'UREï¿½A M.'  


--This query updates player name from UMAï¿½A M. to MICHAEL UMANA
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'MICHAEL UMANA'
 
where [Player Name] = 'UMAï¿½A M.'  


--This query updates player name from BOLAï¿½OS C. to CHRISTIAN BOLANOS
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'CHRISTIAN BOLANOS'
 
where [Player Name] = 'BOLAï¿½OS C.'  

 
 
 --This query updates player name from  NUï¿½EZ V. to VICTOR NUNEZ
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'VICTOR NUNEZ'
 
where [Player Name] = 'NUï¿½EZ V.'  



--ARGENTINA

--This query updates player name from  VERï¿½N to JUAN SEBASTIAN VERON
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'JUAN SEBASTIAN VERON'
 
where [Player Name] = 'VERï¿½N'  



--COLOMBIA

--This query updates player name from C. ZUï¿½IGA to  JUAN ZUNIGA
Update  Portfolio_Projects.dbo.WorldCupPlayers

set
   [Player Name] = 'JUAN ZUNIGA'
 
where [Player Name] = 'C. ZUï¿½IGA ' 



--This query updates player name from BOLAï¿½O to  JORGE BOLANO
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'JORGE BOLANO'
 
where [Player Name] = 'BOLAï¿½O'  





--SWITZERLAND 


--This query updates player name from ZUBERBï¿½HLER to PASCAL ZUBERBUHLER
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'PASCAL ZUBERBUHLER'
 
where [Player Name] = 'ZUBERBï¿½HLER'  


 

--This query updates player name from Wï¿½LFLI to MARCO WOLFLI
Update  Portfolio_Projects.dbo.WorldCupPlayers

set
   [Player Name] = 'MARCO WOLFLI'
 
where [Player Name] = 'Wï¿½LFLI' 



--This query updates player name from Bï¿½RKI to ROMAN BURKI
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'ROMAN BURKI'
 
where [Player Name] = 'Bï¿½RKI'  


 --This query updates player name from SCHï¿½R to  FABIAN SCHAR
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = 'FABIAN SCHAR'
 
where [Player Name] = 'SCHï¿½R'  




--CAMEROON


--This query updates player name from PENSï¿½E to MICHEL PENSEE
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = ' MICHEL PENSEE'
 
where [Player Name] = 'PENSï¿½E'  





--URUGUAY


--This query updates player name from R. MUï¿½OZ to RODRIGO MUNOZ
Update  Portfolio_Projects.dbo.WorldCupPlayers
set
   [Player Name] = ' MICHEL PENSEE'
 
where [Player Name] = 'R. MUï¿½OZ'  



--This Query checks for misspelled names in the dataset. It shows the names with 'ï¿½'(spelling error) in them 

SELECT distinct  *
FROM       Portfolio_Projects.dbo.WorldCupPlayers p
JOIN       Portfolio_Projects.dbo.WorldCupMatches m  ON  m.MatchID = p.MatchID
WHERE      [Coach Name]   like  '%ï¿½%'  
ORDER BY   [Team Initials]  

 
--This Query updates this table with the correct names of misspelled [Coach Name] with the correct Names 

--ARGENTINA

--This Query updates [Coach Name] from Josï¿½ Pï¿½KERMAN (ARG) to JOSE PEKERMAN (ARG)

UPDATE  Portfolio_Projects.dbo.WorldCupPlayers

SET
        [Coach Name]  = 'JOSE PEKERMAN (ARG)'
 
WHERE   [Coach Name]  = 'Josï¿½ Pï¿½KERMAN (ARG)'  


--ENGLAND

--This Query updates [Coach Name] from Sven-Gï¿½ran ERIKSSON (SWE) to SVEN-GORAN ERIKSSON (SWE)
UPDATE  Portfolio_Projects.dbo.WorldCupPlayers

SET
        [Coach Name]  = 'SVEN-GORAN ERIKSSON (SWE)'
 
WHERE   [Coach Name]  = 'Sven-Gï¿½ran ERIKSSON (SWE)'  


 
--GERMANY

--This Query updates [Coach Name] from Jï¿½rgen KLINSMANN (GER) to JURGEN KLINSMANN (GER)

UPDATE  Portfolio_Projects.dbo.WorldCupPlayers

SET
        [Coach Name]  = 'JURGEN KLINSMANN (GER)'
 
WHERE   [Coach Name]  = 'Jï¿½rgen KLINSMANN (GER)'  

 
--IRAN

--This Query updates [Coach Name] from Carlos QUEIRï¿½S (POR) to CARLOS QUEIROZ (POR)

UPDATE  Portfolio_Projects.dbo.WorldCupPlayers

SET
        [Coach Name]  = 'CARLOS QUEIROZ (POR)'
 
WHERE   [Coach Name]  = 'Carlos QUEIRï¿½S (POR)'  





--SWEDEN

--This Query updates [Coach Name] from Lars LAGERBï¿½CK (SWE) to LARS LAGERBACK (SWE)

UPDATE  Portfolio_Projects.dbo.WorldCupPlayers

SET
        [Coach Name]  = 'LARS LAGERBACK (SWE)'
 
WHERE   [Coach Name]  = 'Lars LAGERBï¿½CK (SWE)'  





--This Query shows the extra characters(") in front and behind of [Player Name]

SELECT   *
FROM     Portfolio_Projects.dbo.WorldCupPlayers p
JOIN     Portfolio_Projects.dbo.WorldCupMatches m  ON  m.MatchID = p.MatchID
 where   [Player Name]  like  '%"%'  


--This Query removes the extra characters(") in front and behind of [Player Name]

UPDATE  Portfolio_Projects.dbo.WorldCupPlayers

SET
        [Player Name]  = SUBSTRING([Player Name],2, LEN([Player Name]) - 3) 
WHERE   [Player Name]  like  '%"%'     

