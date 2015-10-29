rm(list=ls())
setwd("~/")



library(XLConnect)               # load XLConnect package 
wk = loadWorkbook("mydata.xls") 
df = readWorksheet(wk, sheet="Sheet1")

str(Churn)
summary(Churn)


str(Churn$Dependents)
summary(Churn$Dependents)
Churn$customerID = as.factor(Churn$customerID)


Churn$gender = NULL
Churn$annual = Churn$monthlyCharges * 12


Churn$millennial = 0
Churn$millennial[Churn$Depends==0 & Churn$Partner ==0 & Churn$Seniorcitizen ==0,] =1


clean = na.omit(Churn)

mean(Churn,na.rm = T)
mean(na.omit(Churn$TotalCharges))

impcustomers = subset(Churn,TotalCharges >100)
impcustomers = Churn[Churn$TotalCharges>100,]
impcustomers = impcustomers[order("TotalCharges"),]

merge


