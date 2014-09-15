#Amanda Marousis
#CMDA
#In class 1


#Problem 1
#Created the R script and had it saved to my CMDA folder

#Problem 2
getwd()
setwd("C:/Users/amandamarousis/CMDA")

#Problem 3
mydatacsv<- read.table('cars1.csv', sep=',', header=T)
#Import the dataset from 'Environment' as well

#Problem 4
dim(cars1)
#The dimension of the data frame is two colums and fifty rows.

#Problem 5
var1 <- cars1[2,2]
var1

#Problem 6
#Speed and distance are the variable names

#Problem 7
cars1[,1]
cars1[,2]

#Problem 8
SPEED <- mydatacsv[,1] 
SPEED

#Problem 9
mydatacsv[15,]

#Problem 10
#Saved the script and synced it with my GitHub account

