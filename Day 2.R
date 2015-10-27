# Day 2 R 

#Operators

#Addition

v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v+t)


#Subraction
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v-t)


#Multiplication
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v*t)

#division
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v/t)

#Reminder
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v%%t)

#Quotient
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v%/%t)

#Exponential
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v^t)



#Relational Operation
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v>t)

print(v < t)

print(v==t)

print(v<=t)

print(v>=t)

print(v!=t)



#Logical Operator
v <- c(3,1,TRUE,2+3i)
t <- c(4,1,FALSE,2+3i)
print(v&t)

print(v|t)

print(!v)

print(v&&t)

print(v||t)

#Miscelleanous Operator
v <- 2:8
v1 <- 8
v2 <- 12
t <- 1:10
print(v1 %in% t) 
print(v2 %in% t) 

#If condition
if(is.integer(x)){
   print("X is an Integer")
}

#Ifelse
ifelse(x < 3, "T", "F")

#If else loop

x <- c("what","is","truth")
if("Truth" %in% x){
   print("Truth is found")
} else {
   print("Truth is not found")
}

#Nested if loop
x <- c("what","is","true")
if("Truth" %in% x){
   print("Truth is found the first time")
} else if ("true" %in% x) {
   print("truth is found the second time")
} else {
   print("No truth found")
}






x <- switch(
  3,
  "first",
  "second",
  "third",
  "fourth"
)
print(x)


#repeat loop
i <- 2 
repeat {
	print(i)
	i <- i+1
	if(i > 4)
	   break
}

names1 <- c("Dave", "John", "Ann", "Roger", "Bill", "Kathy")

f.names.repeat <- function(x)  {
	i <- 1
	repeat {
	   print(x[i])
	   i <- i+1
	   if(x[i] == "Roger")
		break
	}
}




#While loop
i <- 2 
while(i <= 4) {
      i <- i+1
      print(i)
      }
      


#For loop

for(i in 2:4) {
    print(i)
}


for(i in c(1, 3, 6, 9)) {
    z <- i + 1
}


for(i in 3:5) {
    z <- i + 1
    print(z)
}

cars <- c("Toyota", "Ford", "Chevy")
for(j in cars) {
    print(j)
}



#Functions No params no return
hello<-function() {
	cat(paste("Hello, ",system("whoami",T),"!\n",sep="",collapse=""))
}

#Functions With params(multiple) no return
f1 <- function(x, y) {
  x+y
}

# function with params and params declared dynamically returns
f2 <- function(x, y) {
 z1 <- 2*x + y
 z2 <- x + 2*y
 z3 <- 2*x + 2*y
 z4 <- x/y
 return(c(z1, z2, z3, z4))
}

#String Operations

paste(..., sep = " ", collapse = NULL)

a <- "Hello"
b <- 'How'
c <- "are you? "

paste(a,b,c)

paste(a,b,c, sep = "-")

paste(a,b,c, sep = "", collapse = "")


x = "Hello How are you? "
nchar(x)
toupper(x)
tolower(x)
substring(x,first,last)
substr(x,1,3)
