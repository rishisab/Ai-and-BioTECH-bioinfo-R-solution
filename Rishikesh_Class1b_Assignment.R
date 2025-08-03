getwd()
#import csv file
data<- read.csv(file.choose())
View(data)
#data type conversion
str(data)
#convert bmi into factor
data$bmi_fac <-as.factor(data$bmi)
str(data)
data$gender_fact <- as.factor(data$gender)
str(data)
#convert factor into mumeric factor
data$gender_fact <-ifelse(data$gender_fact=="Female",1,0)
data$smoker_fact <- as.logical(data$smoker)
str(data)
data$smoker_fact<-ifelse(data$smoker=="Yes",1,0)
str(data)
