#load library tidyverse
library('tidyverse')


#install.packages('gapminder')


#Load dataset
library(gapminder)

#see names of columns of the dataset
names(gapminder)

#See number of rows and column
dim(gapminder)

#check if there are duplicate data
dim(distinct(gapminder))

#If dim(distinct(gapminder)) gave few number of rows, then we could say that there
# are duplicate data in gapminder


#View dataset
View(gapminder)


#making a bubble plot (not scatter plot because there are 3 variables not 2)
ggplot(gapminder, aes(x=gdpPercap, y = lifeExp)) + geom_point((aes(colour=continent)))


# Expand the x axis to see the graph more convinently. 
ggplot(gapminder, aes(x=gdpPercap, y = lifeExp)) + geom_point((aes(colour=continent))) + 
                          scale_x_log10() 

#Show 1000 instead of 1e + 03
options(scipen=1000)



#Get columns where continent is Europe and year is 2007
A = filter(gapminder, continent=='Europe', year==2007)
A

#Remove column called continent and year
B = select(A, -continent, -year)
B

#aplha controols the opacity
ggplot(B, aes(x=gdpPercap, y =lifeExp, size = pop)) + geom_point(alpha = 0.5)

ggplot(B, aes(x=gdpPercap, y =lifeExp, size = pop)) + geom_point(alpha = 1)



#Nested function calls

ggplot(select(filter(gapminder, continent=="Europe", year==2007),
              -continent,-year), aes(x=gdpPercap,y=lifeExp, size=pop)) +
              geom_point(alpha=0.5)


#pipes

# Ctrl + Shift + M
gapminder %>% 
  filter(continent == "Europe", year==2007) %>% 
  select(-continent, -year) %>% 
  ggplot(aes(x=gdpPercap, y=lifeExp, size=pop)) + geom_point(alpha=0.5)


#alt + shift + k to show all shortcut keys
  

gapminder %>% 
  filter(year == 1952) %>% 
  summarise(num_countries = n_distinct(country), mean_pop=mean(pop))


gapminder %>% 
  group_by(year) %>% 
  summarise(num_countreies = n_distinct(country), mean_pop = mean(pop))



gapminder %>% 
  group_by(year) %>% 
  summarise(num_countries=n_distinct(country), mean_pop = mean(pop)) %>% 
  ggplot(aes(x=year , y=mean_pop)) +
    geom_line()


names(starwars)
View(starwars)

# List characters with species Droid in descending order of mass
starwars %>% 
  filter(species=="Droid") %>% 
  arrange(desc(mass))

#Write a dplyr pipe to group the starwars dataset by species and count the number of
#characters of each species and the mean mass of each species.

MassSpecies = starwars %>% 
  group_by(species) %>% 
  summarise(num = n_distinct(name), mean_mass = mean(mass))

View(MassSpecies)
