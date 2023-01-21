
#Merging data in R

library(dplyr)


data1 = data.frame(ID = 1:2, X1 = c("a1", "a2"), stringsAsFactors = FALSE)
data2 = data.frame(ID = 2:3, X2 = c("b1", "b2"), stringsAsFactors = FALSE)

data1

data2


#show common data
inner_join(data1, data2, by = "ID")

#Shows all data of left side and common data from right side only
left_join(data1, data2, by = "ID")


#Show all data of right side and common side of left side only
right_join(data1, data2, by = "ID")


#Shows all data of left and right side with common sides as well
full_join(data1, data2, by = "ID")


#### left side dataset is given more priority.

#Show the common side only of the left side. (Ignore rest of the values in right side)
semi_join(data1, data2, by = "ID")

#Show the only unique data side the left side. (Ignore rest of the values in right side)
anti_join(data1, data2, id = "ID")




library(nycflights13)

View(airlines)

delayed_flight = flights %>% 
                    filter(dep_delay > 0) %>% 
                    group_by(carrier) %>% 
                    summarise(num_delays = n())
                  
                    
delayed_flight


# left join is used to find the full name of carriers
left_join(delayed_flight, airlines, by="carrier")


flights %>% # start with the flights
  filter(dep_delay>0) %>% # find only the delays
  group_by(carrier) %>% # group by airline (carrier)
  summarise(num_delay=n()) %>% # count the observations
  left_join(airlines,by="carrier") %>% # join by common key
  filter(num_delay==max(num_delay)) %>% # find most delayed
  select(name) # select the airline

View(flights)

flights %>%
  group_by(dest) %>%
  summarise(mean_delay=mean(arr_delay, na.rm=TRUE)) %>%
  filter(mean_delay==min(mean_delay, na.rm=TRUE)) %>%
  left_join(airports,by=c("dest"="faa"))



flights %>%
  group_by(dest) %>%
  summarise(mean_delay=mean(arr_delay, na.rm=TRUE)) %>%
  filter(mean_delay==min(mean_delay, na.rm=TRUE)) %>%
  left_join(airports,by=c("dest"="faa")) %>%
  select(name)


View(flights)


#(a) Considering only flights from JFK to SEA, what was the average, min, and max air
# time of those flights?

flights %>% 
  group_by(flight) %>%
  filter(origin=="JFK" & dest =="SEA") %>% 
  summarise(minAirTime = min(air_time, na.rm = TRUE), 
            maxAirTime = max(air_time, na.rm = TRUE), avgAirTime = mean(air_time, na.rm = TRUE))


#(b) Which city was flown to with the highest average speed?

flights %>% 
  group_by(dest) %>%
  summarise(avg_speed=mean((distance / (air_time /60)), na.rm=TRUE)) %>%
  filter(avg_speed==max(avg_speed, na.rm=TRUE)) %>%
  select(dest)
  
  

#diamonds

library(tidyverse)
summary(diamonds)

View(diamonds)

#(a) Write a dplyr pipe that produces a summary table showing for each cut of diamond
# the number of diamonds of that cut and the correlation coefficient of carat and price.

diamonds %>% 
  group_by(cut) %>% 
  summarise(diamondNum = n(), cor(carat, price, method = "pearson"))


# (b) Write a dplyr pipe to determine what color of diamond has the highest mean of price
# per carat among diamonds with Ideal cut.


diamonds %>% 
  group_by(color) %>% 
  filter(cut == "Ideal") %>% 
  summarise(meanPrice = mean((price/ carat)), na.rm = TRUE) %>% 
  filter(meanPrice == max(meanPrice)) %>% 
  select(color)
