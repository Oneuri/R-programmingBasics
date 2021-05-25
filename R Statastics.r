
# **NAME: URJIT TEMBHURNIKAR**
# PRN: 17070122069
# SDL ASSIGNMENT: R Statastics

#SAMPLE
df <- data.frame(name = c('Jon', 'Bill', 'Maria'),
                 age = c(23, 41, 32)
                 )
print (df)

#MEAN
#create a vector
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)

# Find Mean.
ans <- mean(x)
cat('The mean of vector x is', ans)

#Applying trim option
ans1 <- mean(x,trim = 0.3)
cat('The mean by applying trim is', ans)

#create a vector with NA value
x <- c(12,7,3,4.2,18,2,54,-21,8,-5, NA)

# Find Mean.
ans <- mean(x)
cat('The mean of vector x is', ans)

#find mean by dropping NA values
ans <- mean(x,na.rm = TRUE)
print(ans)

#MEDIAN
#create a vector
y <- c(12,7,3,4.2,18,2,54,-21,8,-5)

ans <- median(y)
cat('Meadian of x is', ans)

#MODE
#Create the function
getmode <- function(v)
    { unique_value <- unique(v)
     unique_value[which.max(tabulate(match(v,unique_value)))]
    
}

#Create the vector with numbers
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)

#Create the mode using the user function
ans <- getmode(v)
cat("The mode of the given vector is ->", ans)

#Create teh vector with characters.
charv <- c("o","it","the","it","it")

ans <- getmode(charv)
cat("The mode of the given vector is ->", ans)

#Linear Regression

x <- c(151,174,138,186,128,136,179,163,152,131)
y <- c(63,81,56,91,47,57,76,72,62,48)

#Apply the lm() function.
relation <- lm(y~x)
print(relation)

relation <- lm(y~x)
print(summary(relation))

# Use of predict() Function

#The predictor vector.
x <- c(151,174,138,186,128,136,179,163,152,131)

# The responce vector.
y <- c(63,81,56,91,47,57,76,72,62,48)

#Apply the lm() function.
relation <- lm(y~x)
print(relation)

# Find wieght of a person with height 170
a <- data.frame(x = 170)
result <- predict(relation,a)
print(result)

#Visualizing the Regression Graphically

#create the predictor and responce variable.
x <- c(151,174,138,186,128,136,179,163,152,131)
y <- c(63,81,56,91,47,57,76,72,62,48)
relation <- lm(x~y)

#Give the chart file a name.
png(file ="Linearregression.png")

#plot the chart.
plot(y,x,col = "blue", main = "Height & weight regression", abline(lm(x~y)), 
     cex = 1.3, pch = 16, xlab = "Wieght in KG", ylab = "Height")

# To save the file.
dev.off()


