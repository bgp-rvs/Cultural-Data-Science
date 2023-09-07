########################################
### R for Absolute Beginners: Day 1 ####
########################################
# Woe betide those using the Danish keyboard!
# tilde: alt + ^ + space (macs)
# curly brackets: option + shift + 8 og 9

# R Base and extensions (packages)
# R Studio: script writer, console, graphs, history of objects
# Object oriented program: text, data points, vectors, matrices, graphs, etc.
# case sensitive
# "send" command is: CTRL+R for PC, or command+return for Mac

# 1. Create a working directory (folder)!
# 2. Set your working directory!
setwd()
setwd("C:/Users/au624473/OneDrive - Aarhus Universitet/Desktop/R Stuff")

# 3. Install and load Packages ##

install.packages("psych")
remove.packages("psych")
library("psych")

###########################
### Introduction and basic data management

# Object creation
x <- "what's up?" # note 1
x
y <- 2
y

str(x) # str is your LIFE
str(y) # str is your LIFE
class(y) # class! New one for me!

mean(x) # errors!

x <- c(1, 2, 3, 4, 5) # concatenate
x
str(x) 
x <- 1:5
x
str(x)
x * 2
t(x)

y <- 6:10
z <- c(x, y) # concatenate
z <- rbind(x, y) # bind as rows
z <- cbind(x, y) # bind as columns
z
z <- data.frame(x, y) # bind the columns into a dataframe
z
z$x # $ = sub
z$y

View(z) 
View(t(z))

z # indexing (like matrix notation)
z[1, 1]
z[1, 2]
z[4,2]
z[1,]
z[ ,2]

#####################################
### Working with data 

## Intuitive basic operations
plot(z, pch = 16, col = "grey")
plot(z, type = "l")

corxy <- cor.test(z$x, z$y)
corxy
?cor.test # help!

## Basic Operations
obs <- c(2, 5, 5, 6, 10, 10, 12, 18, 29, 29)
sum(obs)
sum(obs)/length(obs)
mean(obs)
sd(obs)

obs - mean(obs)
(obs - mean(obs))^2
hist(obs)
hist(obs/length(obs))

## Draw from distributions
n <- 100
set.seed(666) # the number of the beast

normal1 <- rnorm(n, 5, 1)
hist(normal1)

binom1 <- rbinom(n, 1, 0.7)
table(binom1)
table(binom1)/n

## Prepackaged data
data("mtcars")
str(mtcars)

## Explore!
