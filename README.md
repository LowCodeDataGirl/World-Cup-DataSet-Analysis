 
# Maven Analytics World Cup Dataset Analysis

![Logo](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/th5xamgrr6se0x5ro4g6.png)

While studying SQL, I forget most of the concepts learned once I looked away from them. 
This project was my chance to practice what I have learned and to make sure it sticks.

Despite the fact that I enjoyed this project and learned a lot, I found it frustrating in the beginning because I had to go to Google a lot and had no idea how to use StackOverflow.

This dataset contains all World Cup matches and players from 1930-2014. I wanted to draw insights from this data, and thankfully, Maven Analytics suggested questions that would allow me to do that.






## Database
Here is a step-by-step guide for installing the Microsoft SQL Server Management Studio and importing your first dataset.

- [Microsoft SQL Server Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)
## Dataset
The World Cup Dataset contains three tables namely 
- [World Cup Matches] : It consists of 836 rows and 22 columns 
- [World Cup Players] : It consists of X rows and Y columns 
- [World Cup Preview] : It consists of 20 rows and 10 columns 
##  Dataset Schema 
World Cup Matches

- Year
- Datetime
- Stage
- Stadium
- City
- Home Team Name
- Home Team Goals
- Away Team Goals
- Away Team Name
- Win conditions
- Attendance
- Half-time Home Goals
- Half-time Away Goals
- Referee
- Assistant 1
- Assistant 2
- RoundID
- MatchID
- Home Team Initials
- Away Team Initials
- 2nd Half Home Goals
- 2nd Half Away Goals

World Cup Players
- RoundID
- MatchID
- Team Initials
- Coach Name
- Line-up
- Shirt Number
- Player Name
- Position
- Event

World Cup Preview
- Year
- Country
- Winner
- Runners-Up
- Third
- Fourth
- GoalsScored
- QualifiedTeams
- MatchesPlayed
- Attendance
## SQL Skills Used 
- Common Table Expressions (CTE)
- Subqueries

## Data Insights 
 1. How has attendance trended over time? (both average per game and total per year)

2. Do certain cities tend to draw bigger crowds?

3. Do certain teams see larger attendance?

4. Which teams have won the most games? How has number of wins by country trended over time?

5. Based on the Home Team and Away Team columns, does there seem to be a "home team advantage"?

6. Do any teams seem to be stronger in either the first half or the second half? (think about both offense and defense)

7. Which players had the most successful scoring careers? How about the longest careers?


## Documentation


A step-by-step guide is included in this [documentation](https://linktodocumentation), as well as detailed information about the analysis process.

## FAQ

####    Where did you get the dataset ? 

This project used data from [Maven Analytics Data Playground](https://app.mavenanalytics.io/login). They made it easy to search for insights by suggesting them. 


#### Where can I read the full documentation ?

The full documentation is on my [medium page](lowcodedatagirl.medium.com). From the Ask Phase to the Share Phase, I discuss my entire process

#### Can I follow you on your social media platforms ? 

Yes you can !
 
 You'll find me 
- Posting memes or talking about data on [Twitter](https://twitter.com/LowCodeDataGirl/status/1539491369491759107?s=20&t=_AIGHnY6mDlG9uaiR8aa0g)
- Writing articles about complex data concepts and making them digestible on [Medium](lowcodedatagirl.medium.com)   
- Posting data vizualizations inspiration and data infographics on [Instagram](https://www.instagram.com/lowcodedatagirl/)

## License

Distributed under the no License. See LICENSE.txt for more information.
## Acknowledgements

- [Maven Analytics](https://app.mavenanalytics.io/login)
- [Kelvin Esosa]()
- [StackOverflow](https://stackoverflow.com/)


## Show Your Support
Please ⭐️ this repository if this project helped you!


 
 
 
 

 
