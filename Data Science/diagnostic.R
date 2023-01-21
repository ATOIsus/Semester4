library(tidyverse)

install.packages("datarium")

data("marketing", package="datarium")
marketing = as_tibble(marketing)

marketing

model = lm(sales~youtube, data=marketing)
summary(model)

library(broom)
fitted = augment(model)
fitted

# Residural plot

# if variance is equal(constant); data are spread parallelly 

ggplot(fitted, aes(x = .fitted, y = .resid)) +
  geom_point() +
  geom_hline(yintercept = 0)



#install.packages("ggfortify")
library(ggfortify)

#residural and fitted values of youtube and sales not the actual values of youtube and sales
model = lm(sales~youtube, data=marketing)
autoplot(model)

#row 26 26 and 179 are outliars 


model = lm(sales~youtube+facebook, data=marketing)
autoplot(model)

modelA = lm(sales~youtube,data=marketing)
summary(modelA)

modelB = lm(sales~youtube+facebook,data=marketing)
summary(modelB)


a = cor(marketing$sales, marketing$youtube)
a*a

modelAa = lm(newspaper~youtube,data=marketing)
summary(modelAa)

modelBb = lm(sales~newspaper+facebook,data=marketing)
summary(modelBb)

