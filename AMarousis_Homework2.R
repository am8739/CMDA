
getwd()
setwd("/Users/amandamarousis/CMDA")


#Problem 1
load('phsample.RData')

#Problem 2
#The data set is broken up into two sets, personal information by household and personal
#information by person. It includes occupation, sex, age, etc.

#Problem 3
#2.12
psub = subset(dpus,with(dpus,(PINCP>1000)&(ESR==1)&
                          (PINCP<=250000)&(PERNP>1000)&(PERNP<=250000)&
                          (WKHP>=40)&(AGEP>=20)&(AGEP<=50)&
                          (PWGTP1>0)&(COW %in% (1:7))&(SCHL %in% (1:24))))

#2.13
psub$SEX = as.factor(ifelse(psub$SEX==1,'M','F'))
psub$SEX = relevel(psub$SEX,'M')
cowmap <- c("Employee of a private for-profit",
            "Private not-for-profit employee",
            "Local government employee",
            "State government employee",
            "Federal government employee",
            "Self-employed not incorporated",
            "Self-employed incorporated")
psub$COW = as.factor(cowmap[psub$COW])
psub$COW = relevel(psub$COW,cowmap[1])
schlmap = c(
  rep("no high school diploma",15),
  "Regular high school diploma",
  "GED or alternative credential",
  "some college credit, no degree",
  "some college credit, no degree",
  "Associate's degree",
  "Bachelor's degree","Master's degree",
  "Professional degree",
  "Doctorate degree")
psub$SCHL = as.factor(schlmap[psub$SCHL])
psub$SCHL = relevel(psub$SCHL,schlmap[1])
dtrain = subset(psub,ORIGRANDGROUP >= 500)
dtest = subset(psub,ORIGRANDGROUP < 500)
#2.14
summary(dtrain$COW)

#Problem 4
#2.12 is taking a subset of the original dataset from dpus.
#2.13 is reencoding variables such as sex, education and class of worker.
#The last two lines are needed for testing a model with the data.
#2.14 is what appears in the console when you produce the code for the
#summary of category of work. It gives the count for each type.

#Problem 5
FinalProjectcsv<- read.table('FinalProject.csv', sep=',', header=T)

