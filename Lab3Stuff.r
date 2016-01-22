#practice utilizing R functions, learn to read in data
#create data and write files
#lab three

setwd("C:/users/spenc/Programming/info498f/L2_R_Skills")

#using the function sample make a function that returns the sums 
#of rolling two dice x amount of times
roll_dice <- function(rolls) {
  die1 <- sample(6, rolls, replace = TRUE)
  die2 <- sample(6, rolls, replace = TRUE)
  return(die1 + die2)
}

#practice plotting a vector 
#create a vector with 10 numbers
x <- 11:20

#using plot, plot the vector
plot (x, 1:10)

#read in the provided "yahooS.csv", it is a file of the stock price of yahoo at the 
#beginning of each month in 2015 plotting it will display the information from the 
#csv
yahoo <- read.csv("yahooS.csv", stringsAsFactors = FALSE)
plot(yahoo$Date, yahoo$Close, main = "Yahoo Stock 2015", xlab = "month", ylab = "stock price")

# Call the diceroll function utilized earlier to simualte 10,000 rolls
# and plot it in a histogram
hist(roll_dice(10000))

#explain the differences of a histogram and a plot to your neighbor

# write your dice roll results into a csv, append = true allows you to append to the file
# as you run, turning it to false will overwrite the file
#make a file of titled myRollsFifty where you append the file, 5 times with 
#each addition being 10,000 rolls, then write another file of just 10,000 files
#then will be overwritten with each run
write.table(roll_dice(10000), file = "myRollsFifty.csv", append = FALSE, row.names = FALSE, sep = ",", col.names = "sumOfDie")
write.table(roll_dice(10000), file = "myRollsFifty.csv", append = FALSE, row.names = TRUE, sep = ",", col.names = "sumOfDie")
write.table(roll_dice(10000), file = "myRollsFifty.csv", append = FALSE, row.names = TRUE, sep = ",", col.names = "sumOfDie")
write.table(roll_dice(10000), file = "myRollsFifty.csv", append = FALSE, row.names = TRUE, sep = ",", col.names = "sumOfDie")
write.table(roll_dice(10000), file = "myRollsFifty.csv", append = FALSE, row.names = TRUE, sep = ",", col.names = "sumOfDie")

write.table(roll_dice(10000), file = "myRollsTen.csv", append = FALSE, row.names = FALSE, sep = ",", col.names = "sumOfDie")


#view your file
View(read.csv("myRollsFifty.csv"))
