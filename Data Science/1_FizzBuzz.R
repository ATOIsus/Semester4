

print("Hello World")

#6 data types:


x <- 5
y <- 16


#Numeric operator

print(x+y)
print(x*y)

print(y/x)
print(y%%x)
print(y%/%x)


#Logical


x <- c(TRUE, 1, 0, 6)
y <- c(0, 0, 1, TRUE)

print(!x)

print(x&y)
print(x&&y)  # Takes first element only




# for (i in start:end)
#There can be no negative index(step) in loop

for (i in 1:20)
{
  if (i%%15==0)
    cat("FIZZBUZZ ")
  
  else if (i%%3==0)
    cat("fizz ")
  
  else if (i%%5==0)
    cat("buzz ")
  
  else
    cat(i, ' ')
}



ind = 1
sum = 0

num = as.integer(readline(prompt = "Enter a number : "))

while (ind <= num){
  sum = sum + ind^3
  ind = ind + 1
}
    
print(sum)



