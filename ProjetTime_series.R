#Installations
#install.packages("readxl")
#install.packages("forecast")
#install.packages("ggplot2")
library(readxl)
library(forecast)
library(ggplot2)
#Loading the data 
data <- read_excel("C:/Users/f_ati/Documents/Master2/Times series/Projet/Timeseries/Elec-train.xlsx")
data

#These quantities are measured every 15 minutes, 1h =60/15 donc 4
#from 1/1/2010 1:15 to 2/16/2010 23:45.

elec_power<-ts(data[1:4507,2],start=c(1,2),freq=4)
plot(elec_power)

elec_power_temp<-ts(data[1:4507,2:3],start=c(1,2),freq=4)
plot(elec_power_temp)
tmp=acf(elec,type="cor",plot = FALSE)
plot(tmp)
