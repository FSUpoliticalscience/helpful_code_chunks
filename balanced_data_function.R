#Author: Kim Fruge 
#File: balance_data_function.R
#Date: March 24, 2017 
#Purpose: Creates a balanced dataset to merge all data onto

#Here is a fucntion in R that you input years and units and it creates a dataset will all unique unit-years observations 



balanced.data<- function(year1, year2, unit){
     
     m <- year2 - year1 + 1 
     
     unique.unit<- unique(unit) 
     
     year<- c(year1:year2) 
     year<- rep(year, length(unique.unit))
     
     year<- sort(year) 
     
     units<- rep(unique.unit, m) 
     
     dat<- as.data.frame(cbind(year, units))
     
}

# dat<- balanced.data(1995, 2016, ccode) 
