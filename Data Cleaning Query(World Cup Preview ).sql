 --Query to Clean Data in this Table 

/* 
Query to Update country Names
This Query Updates the table with outdated country names to the correct country names
*/

UPDATE  [Portfolio_Projects ].[dbo].[WorldCups_preview]
SET
      [Winner]  = 'Germany'
	 
where [Winner] = 'Germany FR'


UPDATE  [Portfolio_Projects ].[dbo].[WorldCups_preview]
SET
      [Runners-Up]  = 'Germany'
	 
where [Runners-Up] = 'Germany FR'


UPDATE  [Portfolio_Projects ].[dbo].[WorldCups_preview]
SET
      [Third]  = 'Germany'
	 
where [Third] = 'Germany FR'


UPDATE  [Portfolio_Projects ].[dbo].[WorldCups_preview]
SET
      [Fourth]  = 'Germany'
	 
where [Fourth] = 'Germany FR'


UPDATE  [Portfolio_Projects ].[dbo].[WorldCups_preview]
SET
      [Fourth]  = 'South Korea'
	 
where [Fourth] = 'Korea Republic'


