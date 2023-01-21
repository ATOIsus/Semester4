
library(tidyverse)
# Anscombe's quartet (first dataset)
x = anscombe[,1]
y = anscombe[,5]

#1234 -> x value
#5678 -> y value

x
y

a = 2.0
b = 0.7

ggplot(NULL,aes(x=x,y=y)) +
  geom_point() +
  geom_abline(slope=b,intercept=a)


residuals = y-(a+b*x)
residuals



b = sum((x-mean(x))*(y-mean(y)))/sum((x-mean(x))^2)
b
a = mean(y)-b*mean(x)
a

residuals = (a+b*x)-y

ggplot(NULL,aes(x=x,y=y)) +
  geom_point(shape=4,size=10) +
  geom_abline(intercept=a,slope=b) +
  geom_rect(aes(xmin=x,xmax=x+residuals,
                ymin=y,ymax=y+residuals),
            fill="green",alpha=0.5) +
  coord_fixed() +
  xlim(3,17) +
  ylim(3,12)



SSR = sum(residuals^2)
SSR



library(tidyverse)
cars

x = cars$speed
y = cars$dist





#(a) Plot a scatterplot of stopping distance vs speed. Add a title to your plot and label
#the horizontal and vertical axes.


ggplot(NULL, aes(x=x,y=y)) +
  geom_point() +
  
  labs(title="Speed vs Dist ",
       x = "Speed SS",
       y = "Stopping Distance")



#(b) Calculate the correlation coefficient between stopping distance and speed. How
#would you describe the relationship between the speed and stopping distance?
 
cor(x,y, method="pearson")
 
  
#(c) Find the equation of the line of best fit


ggplot(NULL,aes(x=x,y=y)) +
  geom_point(shape=4,size=10) +
  geom_abline(intercept=a,slope=b) +
  geom_rect(aes(xmin=x,xmax=x+residuals,
                ymin=y,ymax=y+residuals),
            fill="green",alpha=0.5) +
  coord_fixed() +
  xlim(3,17) +
  ylim(3,12)


ggplot(NULL,aes(x=x,y=y)) +
  geom_point() +
  geom_abline(intercept=a,slope=b) 




