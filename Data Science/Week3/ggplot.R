



library(tidyverse)
library(ISLR) # you might also need install.packages("ISLR")

credit = as_tibble(Credit)
View(credit)

ggplot(credit, aes(x=Income,y=Balance)) +
  geom_point()


ggplot(credit) +
  geom_point(aes(x=Income,y=Balance,colour=Student)) +
  labs(title="Balance vs Income ",
       x = "Income ($000)",
       y = "Balance ($)")

#scale_color_discerete() is used to separate

ggplot(credit) +
  geom_point(aes(x=Income,y=Balance,colour=Student)) +
  scale_color_discrete() +
  labs(title="Balance vs Income ",
       x = "Income ($000)",
       y = "Balance ($)")


ggplot(credit) +
  geom_point(aes(x=Income,y=Balance)) +
  scale_x_continuous(limits=c(-100,250)) #range to show


View(mpg)

d = ggplot(mpg, aes(fl))
d = d + geom_bar()
d = d + coord_flip() # need to do in assignmen as well. Make the bargraph horizontally
d

library(gapminder)
#View(gapminder)
smth = ggplot(gapminder, aes(gdpPercap))
smth = smth + geom_histogram()
smth


smm = ggplot(gapminder, aes(gdpPercap))
smm = smm + geom_boxplot()
smm = smm + coord_flip()
smm
