

library(tidyverse)
state = as_tibble(state.x77)
summary(state)
ggplot(state,aes(x=Murder)) +
  geom_boxplot()



t.test(state$Murder,mu=8.5)


x = state$Murder
t = (mean(x)-8.5)/(sd(x)/sqrt(length(x)))
t
df = length(x)-1
df
pvalue = 2*pt(t,df)
pvalue
lower = mean(x)-qt(1-0.05/2,df)*sd(x)/sqrt(length(x))
upper = mean(x)+qt(1-0.05/2,df)*sd(x)/sqrt(length(x))
c(lower,upper)


library(tidyverse)
state = as_tibble(state.x77)
summary(state)
library(GGally)
ggscatmat(state)



#Check relationship between two variables 

cor.test(state$Population,state$Income)








install.packages("psych")
library(psych)
corr.test(state)




children = tribble(
  ~age,~height,~siblings,
  18, 76.1, 1,
  19, 77.0, 2,
  20, 78.1, 3,
  21, 78.2, 2,
  22, 78.8, 0,
  23, 79.7, 1,
  24, 79.9, 5,
  25, 81.1, 0,
  26, 81.2, 1,
  27, 81.8, 4,
  28, 82.8, 1,
  29, 83.5, 5 )

ggplot(children, aes(x=age,y=height)) +
  geom_point() +
  geom_smooth(method="lm", se=FALSE)
model = lm(height~age, data=children)
summary(model)


model = lm(height~age+siblings, data=children)
summary(model)