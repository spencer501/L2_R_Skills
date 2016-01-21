#practice utilizing R functions
#lab three

#using the function sample make a function that returns the sums 
#of rolling two dice x amount of times
diceRolls <- function(x) {
  dice1 <- sample(6,x,replace=TRUE)
  dice2 <- sample(6,x,replace=TRUE)
  dice_roll<- dice1 + dice2
  return (dice_roll)
}

#practice plotting a vector 
#create a vector with 10 numbers
objectOne <- c(1,2,3,4,5,6,7,8,9,10)

plot(objectOne, main = "test", xlab = "index in vertex", ylab = "number")
#read in the provided, it is a file of the stock price of yahoo at the 
#beginning of each month in 2015 plotting it will display the information from the 
#csv
object <- read.csv("yahooS.csv", stringsAsFactors = FALSE)

plot(object$Date, object$Close, main = "yahoo stock price by month in 2015", xlab = "month", ylab = "price")


# Call the diceroll function utilized earlier to simualte 10,000 rolls
# and plot it in a histogram
object <- diceRolls(10000)
hist(object)



# write your dice roll results into a csv, append = true allows you to append to the file
# as you run, turning it to false will overwrite the file
write.table(object, file = "MyRolls.csv", append = FALSE, row.names=FALSE,  sep=",", col.names = "sumofdie")
#view your file
test <- read.csv("myRolls.csv")

View(test)
