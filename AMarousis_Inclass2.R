#Amanda Marousis
#In class 2

getwd()
setwd("/Users/amandamarousis/CMDA")

#PART1------------------------------------------------------------------------------

#Problem 1
load('exampleData.rData')
summary(custdata)
#Income: includes negative values, which may not be helpful to our analysis
#        and also has a maximum value very far away from 3rd quartile. Possible outliers
#Housing type: Includes 56 missing observations, we should look further into that.
#Recent move: Also has 56 missing observations.
#Age: The mininmum is 0, which is probably not helpful to our analysis, and we
#     should consider removing observations that don't make sense. Maximum is
#     146.7 which seems like an error in data entry.
#Income: Has 328 missing observations, potential problem.

          #------------------------------------------------------------
#Problem 2
uciCar <- read.table(
  'http://www.win-vector.com/dfiles/car.data.csv',
  sep=',',
  header=T
)
summary(uciCar)

#Each type inside each variable has the same count, except for rating.
#This tells us that whoever created the dataset wanted equal amounts of each type
#in their data.

        #----------------------------------------------------------
#Problem 3
load('credit.Rdata')
summary(d$Personal.status.and.sex)
summary(d$Other.debtors/guarantors)

#PART2-------------------------------------------------------------------------------

#Problem 1
install.packages("hexbin")
library(hexbin)

custdata2 <- subset(custdata,
                    (custdata$age > 0 & custdata$age < 100
                     & custdata$income > 0))

library(ggplot2)
ggplot(custdata2, aes(x=age,y=income)) +
  geom_point() +
  ylim(0,200000) +
  theme_bw() +
  ggtitle("Scatterplot of Income vs Age")

ggplot(custdata2, aes(x=age, y=income)) + geom_hex(binwidth=c(5, 10000)) +
  geom_smooth(color="white", se=F) + ylim(0, 200000)
#The general layout of the data in each plot is similar, but I think the hexplot
#is better at showing where the trend and majority/minority of the data actually is.

          #-----------------------------------------------------
#Problem 2
ggplot(custdata, aes(x=num.vehicles,y=income)) +
  geom_point() +
  ylim(0,200000) +
  theme_bw() +
  ggtitle("Scatterplot of Income vs Number of Cars")
#I would use a scatter plot because we are dealing with two numerical variables,
#although it looks a little too dense.You can see most people have two cars.

          #------------------------------------------------------
#Problem 3
ggplot(custdata) + geom_bar(aes(x=recent.move,
                                fill=income.lt.30K),
                            position="dodge") +
  theme_bw()+
  ggtitle("How many people are insured per marital status")
#I used a side by side bar chart because I was dealing with two categorical
#variables and I wanted to compare them, so I thought side by side was best







