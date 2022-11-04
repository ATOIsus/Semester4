
#install.packages("nycflights13") 

library(tidyverse)

library(nycflights13)

View(flights)

dim(flights)



#Extracting columns

names(flights)

select(flights, year, month, day)
select(flights, year:day)

select(flights, -year)
select(flights, -(year:day))


# Select column only not rows

select(flights, starts_with("sched"))
select(flights, ends_with("delay"))
select(flights, contains("arr"))
select(flights, matches("*.*_*_."))


#
dim(flights)
dim(distinct(flights))
distinct(select(flights, month, day))
distinct(flights, month, day)


# column to vector

sat = pull(flights, sched_arr_time)
sat

summary(sat)


# rename column
rename(flights, destination=dest, tail_num=tailnum, arr_delay=arrivalDelay)
View(flights)


# add columns
added = mutate(flights, gain=arr_delay-dep_delay, speed=distance/(air_time/60))
dim(flights)
dim(added)
       

# Doesnot store the result
transmute(added, gain=arr_time - dep_time, gain_per_hour = gain/(air_time/60))
transmute(added, distane_resudial=distance-mean(distance))

#Slicing 87 to 96 including 87 so 10 columns are shown
slice(flights, 87:96)

#Show n number of rows.
top_n(flights, 20)


#filtering
filter(flights, month==1, day==1)

# generate random data
set.seed(123)

data = sample_n(flights, 20)

0.001 *nrow(flights)

sample_frac(flights, 0.001)



# sorting

a = arrange(flights, year, month, day)
View(a)


#(a) Departed between midnight and 6am (inclusive).

select(flights)


#(b) Had an arrival delay of two or more hours.

filter(flights, arr_delay >= 120)

#(c) Flew to Houston (IAH or HOU).

filter(flights, dest=="IAH" | dest =="HOU")

#(d) Were operated by United (UA), American (AA), or Delta (DL).
airlines
filter(flights, carrier=="UA" | carrier== "AA" | carrier =="DL")

#(e) Arrived more than two hours late, but didn't leave late.


#(f) Were delayed by at least an hour, but made up over 30 minutes in flight


