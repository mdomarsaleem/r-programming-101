rm(list=ls())
setwd("~/")



library(XLConnect)               # load XLConnect package 
wk = loadWorkbook("mydata.xls") 
df = readWorksheet(wk, sheet="Sheet1")

library(XLConnect)
library(reshape2)
library(dplyr)

wb = loadWorkbook("Churn.xls")
df = readWorksheet(wb, sheet = "Sheet1", header = TRUE)

Churn= read.csv("Churn.csv",stringsAsFactors = F,header = T)

fb = read.delim('pseudo_facebook.tsv')

#type conversion
Churn$SeniorCitizen = as.factor(Churn$SeniorCitizen)
Churn$Partner = as.factor(Churn$Partner)
Churn$customerID = as.character(Churn$customerID)
is.na(Churn)
clean = na.omit(Churn)
Churn_male = clean[(clean$gender=="Male"),]
Churn$gender = as.factor(Churn$gender)


#reading the structure
str(fb)
str(churn)
str(df)

#summarising the structure
summary(fb)
summary(churn)
summary(df)



#converting the data types
as.numeric()
as.factor()    #levels
as.character()

#addding new variable
Churn_male$annual = Churn_male$MonthlyCharges * 12
Churn_male$diff = Churn_male$annual - Churn_male$TotalCharges
summary(Churn_male$diff)
#mean
Churn$TotalCharges[is.na(Churn$TotalCharges),] = mean(Churn$TotalCharges)

mean(na.omit(Churn$TotalCharges))


#deleting a variable
Churn_male$gender = NULL


str(Churn$Dependents)
summary(Churn$Dependents)
Churn$customerID = as.factor(Churn$customerID)


Churn$gender = NULL
Churn$annual = Churn$monthlyCharges * 12


Churn$millennial = 0
Churn$millennial[Churn$Depends==0 & Churn$Partner ==0 & Churn$Seniorcitizen ==0,] =1

#subseting
impcustomers = subset(Churn,TotalCharges >100)
impcustomers = Churn[Churn$TotalCharges>100,]
impcustomers = impcustomers[order("TotalCharges"),]

#subset data
c_male = subset(clean,gender=="Male")
Churn_male = clean[(clean$gender=="Male"),]

#creating new combinations
sapply(strsplit(Churn$customerID,"-"), "[[", 2)

#data sorting
Churn[order(Churn$customerID),]
Churn[order(-Churn$customerID),]

#min,max,which,nrow,ncol

min(Churn$tenure)
max(Churn$tenure)
which()

#cast,melt
b = dcast(a[1:2],age~variable+gender)
a = melt(fb[,c(2,6,5)],id=c("age","gender"))

#group_by
fb_age_gender = fb %>% group_by(age,gender) %>%
summarise(mean_friend = mean(friend_count),
median_friends = median(friend_count))


#prop table,table

table(fb$age,fb$gender)
prop.table(table(Churn$gender,Churn$Churn))
prop.table(table(Churn$gender,Churn$Churn),1)




#groupby

groupby = fb %.% group_by(age,gender) %.%
                summarise(mean_friend = mean(friend_count),
                          median_friends = median(friend_count)
                          ,n=n())%.%filter(!is.na(gender)%.%arrange(age) )   





merge


