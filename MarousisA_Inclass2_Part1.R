#Lecture 7

getwd()
setwd('C:\Users\amandamarousis\CMDA')

#The health insurance customer data
load('exampleData.rData')
#Examine data
names(custdata)
dim(custdata)
class(custdata)

#Summary statistics

summary(custdata) #for the entire data frame

#look at individual variables to spot problems

summary(custdata$is.employed)
#
summary(custdata$income)
#There are 328 missing values, which could point to an error because it is extreme
#A minimum income of zero might not be useful in the data
summary(custdata$age)
#The minimum is fairly useless to our analysis.
#The Maximum is an outlier that seems to be an entry error so we should delete it.

