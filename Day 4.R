rm(list=ls())
setwd("~/")

library(ggplot2)
library(ggthemes)

fb <- read.csv('pseudo_facebook.tsv',sep = '\t')

ggplot(aes(x=dob_day),data=fb)+geom_histogram()+
                              facet_wrap(~dob_month)+
                              # facet_grid(~dob_month)+
                              scale_x_discrete(breaks=1:31)
    
ggplot(aes(x=friend_count),data=fb)+
  geom_histogram(binwidth = 10)+scale_x_continuous(limits=c(0,1100),name="Friend counts of users")+
  scale_y_continuous(name="Count of people in the bin")+
    xlab('hello')+ylab('yoo')+ggtitle('histogram of friends')+facet_wrap(~gender)+
  theme(legend.position = "bottom")+
 # theme(legend.position = c(0.8, 0.8))+
  theme(axis.title.x = element_text(size = 20), axis.title.y = element_text(size = 20))

#alpha,size,linetype,colour


d=data.frame(beauty=c(1,2,6,4,4,6,7,8), intelligence=c(8,4,7,5,4,9,2,3), speed=c(7,6,9,5,7,6,7,8), gender=c('m','m','f','m','f','f','f','m'),s=c('a','b','a','b','a','b','a','b'))
ggplot() + 
  scale_size_continuous() +
  geom_point(data=d, mapping=aes(x=intelligence, y=beauty, shape=s, color=gender, size=speed)) +
  ggtitle("geom_point in 5-D")



ggplot(data=fb,aes(age,friend_count))+geom_point(alpha=0.5,color="yellow")+xlim(0,90)+geom_line(stat='summary',fun.y = mean)

ggplot(data=fb,aes(age,friend_count))+geom_point(alpha=0.5,color="yellow")+xlim(0,90)+geom_line(stat='summary',fun.y = quantile,probs=0.9)



+geom_abline(intercept =0,slope=1)

+geom_vline(aes(xintercept=wt))

ggplot(na.omit(fb),aes(x = age,y = friend_count,color=sort(gender)))+geom_bar(stat='identity',position = "fill")

coord_polar(theta = "y")

