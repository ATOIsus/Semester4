


#read.csv : default method for importing relative small number of data 
mydata = read.csv("C:/Users/Acer/Desktop/Semester 4/Data Science/Week2/Book1.csv")



#read_csv : tidyverse package 
#           It is faster.

library(tidyverse)

mydata = read_csv("C:/Users/Acer/Desktop/Semester 4/Data Science/Week2/Book1.csv")
mydata


data =read_csv("C:/Users/Acer/Desktop/Semester 4/Data Science/Week2/downCSV.csv")
View(data)


ggplot(data, aes(x=year, y=variable)) +
  geom_boxplot()



ggplot(data, aes(x=value, y=year)) +
  geom_point()



# importing from URL

library(tidyverse)
url = "https://raw.githubusercontent.com/fivethirtyeight/data/master/unisex-names/unisex_names_table.csv"
namesdata = read_csv(url)
namesdata


View(arrange(namesdata,gap))


library(tidyverse)
url = "https://raw.githubusercontent.com/fivethirtyeight/data/master/births/US_births_2000-2014_SSA.csv"
dataa = read_csv(url)
dataa

ggplot(dataa, aes(x=year, y = births)) + geom_point()




