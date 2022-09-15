

# String sequence.

people = c("Djokovic","Federer","Thiem","Zverev")
print(people)



# Numerical sequence.

# seq(start, end, step)

odds = seq(1,20,1)
print(odds)

one_to_seventy = 1:70
print(one_to_seventy)



# With 2 lists

# Sum
a = c(3,1,4,1,5)
b = c(1,6,1,8,0)
sum = a+b

print(sum)

#Product
lst1 = c(3,1,4,1,5)
lst2 = c(1,6,1,8,0)
product = lst1*lst2

print(product)



#Different methods.
vowels = c("a","e","i","o","u")

print(vowels[1])
print(length(vowels))
print(vowels[length(vowels)])
print(vowels[2:4])
print(vowels[c(1,3,5)])



# With Boolean value
shoe_sizes = c(5.5, 11, 7, 8, 4)
filter = c(TRUE, FALSE, FALSE, FALSE, TRUE)

print(shoe_sizes[filter])
shoe_is_small = (shoe_sizes<6)

print(shoe_is_small)
print(shoe_sizes[shoe_is_small])
print(shoe_sizes[shoe_sizes>6])



#Dictionary Type
person = list(
  first_name = "Ada",
  job = "Programmer",
  salary = 100000,
  carparking_permit = TRUE
)

print(person)
names(person)
person$first_name
person$job
person[["salary"]]


#String list

animals = list("Aardvark","Baboon","Camel")

print(animals)
animals[1]
animals[[1]]

is.list(animals)
is.list(animals[1])
is.list(animals[[1]])



#Exercise.
# (a) Create your own vector, e.g., names of some of your friends.
# (b) Create your own list, e.g., some details of your life.
# (c) Create a list which has another list as one of its elements.
# (d) Create a list which has a vector as one of its elements.
# (e) Is it possible (in R) to create a vector which has a list as one its elements?



