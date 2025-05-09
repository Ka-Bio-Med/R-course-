#Exploratory Data Analysis - Statistics 

#Mean 

library(tidyverse)
ny<-c(1,1,3,4,5,6,7,8,9,11,66)
ny


la<-c(1,2,3,4,5,6,7,8,9,10,11)

pizza<-data_frame(ny,la)

mean(pizza$ny)
mean(pizza$la)

#Median 
median(pizza$ny)

#Mode - dosen't have built in function, so need contingency(frequency table)
x <- table(ny)
x
x<-table(pizza$ny)
x

names(x)[which(x==max(x))]
#output:1- its because 1 is mentioned 2(most times)
#if all outputs are different there is no mode

summary(pizza)

#skewness
col.1<-c(1,1,1,1,2,3,3,3,3,5,6,7)
col.2<-c(1,1,2,2,3,3,8,8)
col.3<-c(1,2,3,3,4,4,5,5)

df<-data_frame