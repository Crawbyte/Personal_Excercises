# Basics 
## Print the R version
my_version <- print(R.version.string)
# R version 3.6.3 (2020-02-29)

## Print the date with hour
print(date())

## Simple data entry via terminal
name = readline(prompt= 'Input your name ')
age = readline(prompt = 'Input your age ')
print(paste('My name is ', name, ', and my age is ', age, ' years old'))
 
## Seeing the objects in memory until now
print(ls())

## Sequence of  numbers, mean and sum
seq_01 <- print(0:20)
mean_seq01 <- mean(seq_01)
sum_seq01 <- sum(seq_01)

## Vector with random integers
my_vector <- sample(seq_01, 6)

## Fibonacci numbers
Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i -2] + Fibonacci[i -1]
print('First 10 Fibonacci numbers: ')
print(Fibonacci)

## Conditionals: Print the numbers from 1 to 50 and print "Fizz" 
## for multiples of 3, print "Buzz" for multiples of 5, 
## and print "FizzBuzz" for multiples of both
for (n in  1:50) {
  if (n %% 3 == 0 & n %% 5 == 0) {print('FizzBuzz')}
  else if (n %% 3 == 0) {print('Fizz')}
  else if (n %% 5 == 0) {print('Buzz')}
  else print(n)
}

## Extract letters in upper case and lower
head_low <- print(head(letters, 10))
print(c('First 10 letter in lower case: ', head_low))

tail_low <- print(tail(letters, 10))
print(c('Last 10 letter in lower case: ', tail_low))

head_up <- print(head(LETTERS, 10))
print(c('First 10 letter in upper case: ', head_up))

tail_up <- print(head(LETTERS, 10))
print(c('Last 10 letter in upper case: ', tail_up))
print(paste())

## Max and min
print(paste('Maximun value of the sequence: ', max(seq_01)))
print(paste('Minimun value of the sequence: ', min(seq_01)))

## Make a matrix with a vector
a <- c(0:4)
b <- c(5:9)
c <- c(10:14)
my_matrix <- cbind(a, b, c)
my_matrix

## Create a list of random numbers in normal distribution and count occurrences of each value
n = floor(rnorm(100, 50, 25))
t <- table(n)

## Create a list of heterogeneous data, which include character, numeric and logical vectors
my_list <- list(Chr=c('Python','R', 'Go'), nums= 0:2, flag = TRUE)
my_list

## Dataframe of employees
Employees = data.frame(Name=c("Cristian R","Adriana R","Pedro R"),
                       Gender=c("M","F","M"),
                       Age=c(26,32,22),
                       Designation=c("Operator","Manager","Operator")
)
print("Details of the employees:")                      
print(Employees)
