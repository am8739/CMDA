#---------------------------------------------------------------------------------
#Problem 1

#1-4 done without code/comments

#5 HW1 due September 8, 2014.
  #Amanda Marousis
  #CMDA
  #Homework 1

#6 
getwd()
setwd("C:\Users\amandamarousis\CMDA")

mydatacsv<- read.table('prices.csv', sep=',', header = TRUE,
                       col.names = c("PRICE", "SQFT", "AGE", "NE"))
mydatacsv

#7
#row.names() displays a character vector equal to the first column(number of rows),
#excluding empty cells and duplicates

#8
mydatatxt<- read.table('HW1data.txt', sep=',', header=T)
mydatatxt

#9 No write up needed
#--------------------------------------------------------------------------
#Problem 2

#1
c1 = c(0, 7, 0, 2)
c2 = c(0, 3, 1, 7)
c3 = c(0, 3, 0, 7)
c4 = c(0, 5, 0, 8)
MAT1=cbind(c1,c2,c3, c4)
MAT1

#2
MAT1[4,4]

#3
t(MAT1)

#4
solve(MAT1)
#The inverse of this matrix does not exist,
#which you can check by concluding that the determinant is zero
det(MAT1)


#---------------------------------------------------------------------------
#Problem 3

#1
fpe <- read.table("http://data.princeton.edu/wws509/datasets/effort.dat")

#2
fpe[fpe$effort == 0,]

#3
names(fpe)

#4
row.names(fpe)

#5
#The head() function prints out the first six variables
head(fpe)

#6
#to csv file
write.csv(fpe,file="fpe.csv") 
#to text document
write.table(fpe,file="fpe.txt", sep="\t")

