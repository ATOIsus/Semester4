library(tidyverse)

myleague = "E0"

# Get data from www.football-data.co.uk

url = paste0("https://www.football-data.co.uk/example.csv")  

football = read_csv(url)

View(football)

colnames(football)

distinct(football, HomeTeam)




# (a) Pick your favourite team in this league, and filter out only those matches (rows) that
#     your team is involved in (either as the home team or the away team).

football %>% 
  filter(HomeTeam == "Bolton"| AwayTeam == "Bolton")


#(b) Write a dplyr pipe to find the mean (average) number of Full Time Home Goals
#    scored by each team over the league season.


football %>% 
  group_by(HomeTeam) %>% 
  summarise(mean(`Full time home goals`))



