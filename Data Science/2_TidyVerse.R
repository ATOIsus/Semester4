

#install.packages("tidyverse")

library(tidyverse)

#mpg: Data set of car based in MilesPerGallon
data = mpg


ggplot(data) + geom_point(mapping = aes(x=displ, y=hwy))

#ggplot(data = mpg) + geom_point(mapping = aes(x=displ, y=hwy))

ggplot(data = mpg) +geom_point(mapping = aes(x=displ, y=hwy, colour=class, size=cyl))


