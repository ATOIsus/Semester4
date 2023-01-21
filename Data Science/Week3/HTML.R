

library(tidyverse)
library(rvest) #Package to work with HTML. _html
library(stringr) #String Manipulation. _str
library(tidyr)
library(lubridate) #For date and time 

url="http://www.espn.com/nfl/superbowl/history/winners"
s
page = read_html(url)   #read entire html source code.
page

url="https://sgp1.blynk.cloud/external/api/get?token=byCuxbgAUlcWYXyZBW6r0q1R4Xv_PB2h&v3"

page = read_html(url)   #read entire html source code.
page


sb_table = html_nodes(page, 'table')  #take table from page(HTML)
sb = html_table(sb_table)[[1]] #Take dataframe and datatype.
sb
View(sb)


sb = sb[c(-1,-2),] #remove first and second row
names(sb) = c("number", "date", "site", "result") #Setting names of columns
sb = as_tibble(sb)
sb



mutate(sb, number=1:nrow(sb)) # Change numbering from Roman to Numerical value


mutate(sb, date=mdy(date)) #ymd is the default

# Separate stadium and city from site coulmn 
# 
separate(sb, site, c('stadium', "city", NA), sep="[()]")


separate(sb, result, c("winner", "looser"), sep="," )


# Pattern: ASCII codes

pattern = ' \\d+$' # check until the end of the string

separate(sb, result, c("winner", "looser"), sep = ",") %>%  # separate winner and looser
  mutate(winnerscore=as.numeric(str_extract(winner,pattern))) %>%  # copy text after string into winnerscore
  mutate(winner=gsub(pattern,"",winner))  %>%  # Remove text after the string i.e. the score.

  mutate(looserscore = as.numeric(str_extract(looser, pattern))) %>% 
  mutate(looser=gsub(pattern,"",looser)) %>% 
  mutate(gap = winnerscore - looserscore) %>% 
  ggplot(aes(x= gap, y = date) + 
           geom_point())


mutate(number=1:nrow(sb)) %>%
  mutate(date=mdy(date)) %>%
  separate(site,c("stadium","city",NA),sep='[()]') %>%
  separate(result,c("winner","loser"),sep=', ') %>%
  mutate(winnerscore=as.numeric(str_extract(winner,pattern))) %>%
  mutate(winner=gsub(pattern,"",winner))


#(a) Complete the pipe above to separate the losing team from the losing score.




#(b) Append to the pipe to plot a scatterplot of date vs margin of win (winner score
#                                                                       minus loser score).



library(lubridate)
wday(today(), label=TRUE)


dmy(01032020) - dmy(02012012)


#Tyson Fury (born 12/08/1988) and Deontay Wilder (born 22/10/1985) boxed for the
#WBC Heavyweight title. Use lubridate to calculate how many days older Wilder is
#than Fury.

fury = dmy(12081988)
wilder = dmy(22101985)

diff = fury - wilder
diffs  









