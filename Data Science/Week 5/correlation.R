

# first row

x = anscombe[,1]
y = anscombe[,5]
x
y
summary(x)
sd(x)
summary(y)
sd(y)
cor(x,y)
library(tidyverse)
ggplot(NULL, aes(x=x, y=y)) + geom_point()







x = anscombe[,1]
y = anscombe[,5]
x
y
summary(x)
sd(x)
summary(y)
sd(y)
cor(x,y)
library(tidyverse)
ggplot(NULL, aes(x=x, y=y)) + geom_point()








# Now third column

# if there are outliar; it is hard to decrease the residuals. 
# we can't draw a conclusion because of the outliar.

x = anscombe[,3]
y = anscombe[,7]
x
y
summary(x)
sd(x)
summary(y)
sd(y)
cor(x,y)
library(tidyverse)
ggplot(NULL, aes(x=x, y=y)) + geom_point()


# removing the outliar; remove third index

x = anscombe[-3,3]
y = anscombe[-3,7]
x
y
summary(x)
sd(x)
summary(y)
sd(y)
cor(x,y)
library(tidyverse)
ggplot(NULL, aes(x=x, y=y)) + geom_point()


#4th column


#as there is a outliar; however we can conclude that there is trong correlation.

x = anscombe[-8,4]
y = anscombe[-8,8]
x
y
summary(x)
sd(x)
summary(y)
sd(y)
cor(x,y)
library(tidyverse)
ggplot(NULL, aes(x=x, y=y)) + geom_point()



library(gapminder)
ggplot(gapminder, aes(x=gdpPercap, y=lifeExp)) +
  geom_point(aes(colour=continent))
                                         
cor(gapminder$gdpPercap, gapminder$lifeExp)                 


gapminder %>%
  group_by(continent) %>%
  summarise(num_countries=n_distinct(country),
            r=cor(gdpPercap,lifeExp)) 


install.packages("ISLR")
library(tidyverse)
library(ISLR)
credit = as_tibble(Credit)
credit = select(credit,Balance,Limit,Income)
summary(credit)


ggplot(credit, aes(x=Balance, y = Limit)) + geom_point()
cor(credit$Balance, credit$Limit)


install.packages('GGally')
library(GGally)

ggscatmat(select(credit,Balance,Limit,Income))



# Categorical Data

install.packages("titanic")
library(titanic)
titanic = as_tibble(titanic_train)
titanic


titanic = select(titanic,Survived,Pclass,Name,Gender=Sex,Age,Fare)
titanic
summary(titanic)



titanic$Survived = as_factor(titanic$Survived)
titanic$Pclass = as_factor(titanic$Pclass)
titanic
summary(titanic)


library(GGally)
ggscatmat(titanic)


ggplot(titanic, aes(x=Gender)) +
  geom_bar(aes(fill=Survived))


ggplot(titanic, aes(x=Pclass)) +
  geom_bar(aes(fill=Survived))

# Survived by Gender and Pclass
ggplot(titanic, aes(x=Gender)) +
  geom_bar(aes(fill=Survived)) +
  facet_wrap(~Pclass)



# Survived by Age and Gender (beware colours)
ggplot(titanic, aes(x=Age)) +
  geom_histogram(aes(fill=Survived),binwidth=5) +
  facet_wrap(~Gender)

# Survived by Gender and Pclass
ggplot(titanic, aes(x=Gender)) +
  geom_bar(aes(fill=Survived)) +
  facet_wrap(~Pclass)




#Qualitative to quantitative and labelelling.



