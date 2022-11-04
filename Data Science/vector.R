

edge = c(1,4,6,8,9)
typeof(edge)



edge = c(1L,4L,6L,8L,9L, 9)
typeof(edge)


edge = c(1L,4L,6L,8L,9L, "smth")
typeof(edge)



people = c("Djokovic","Federer","Thiem","Zverev",
           "Barty","Kenin","Halep","Muguruza")
print(people)


odds = seq(1,20,2)
print(odds)


even = seq(2,20,2)
print(even)


seq30 = 1: 30
print(seq30)


a = c(1,4,4,6,8)
b = c(1,4,6,8,9)
print(a+b)
print(b+a)

print(a*b)
print(b*a)


vowels = c("a","e","i","o","u")
print(vowels[1])
print(vowels[10])
print(vowels[-1])
print(length(vowels))
print(vowels[length(vowels)])
print(vowels[2:4])
print(vowels[c(1,3,5)])



shoe_sizes = c(5.5, 11, 7, 8, 4)
filter = c(TRUE, FALSE, FALSE, FALSE, TRUE)
print(shoe_sizes[filter])
shoe_is_small = (shoe_sizes<6)
print(shoe_is_small)
print(shoe_sizes[shoe_is_small])
print(shoe_sizes[shoe_sizes>6])


person = list(
  first_name = "Ada",
  job = "Programmer",
  salary = 100000,
  carparking_permit = TRUE
)
print(person)
names(person)
colnames(person) ##
person$first_name
person$job
person[["salary"]]
person["salary"]



animals = list("Aardvark","Baboon","Camel")
print(animals)
animals[1]
typeof(animals[1])
animals[[1]]
typeof(animals[[1]])
is.list(animals)
is.list(animals[1])
is.list(animals[[1]])


#Exercise.
#(a) Create your own vector, e.g., names of some of your friends.

vName = c("smth", "smth1", "smth2", "smth3")
vName


#(b) Create your own list, e.g., some details of your life.

lifeEvents = list("Wake up",
                  "Arrive at college",
                  "Go home")
lifeEvents


#(c) Create a list which has another list as one of its elements.

universe = list("everything", lifeEvents)
universe


#(d) Create a list which has a vector as one of its elements.

life = list("mnth", vName)
life

#(e) Is it possible (in R) to create a vector which has a list as one its elements?
# No

tryList = c("sell", life)
tryList

#explanation
is.list(universe[[2]]) # list inside list

is.list(tryList[[2]])  # list inside vector


typeof(tryList) # vector is converted into script
typeof(tryList[2])
typeof(tryList[[2]])


print(tryList)
print(tryList[2])
print(tryList[[2]])




