getwd()
setwd("C:/Users/Havindu Sineth/Desktop/IT24300019ps lab 9")

#1
set.seed(123)
bake_time<-rnorm(25,mean=45,sd=2)
print(bake_time)
#ii
t.test(bake_time,mu=46,alternative = "less",conf.level = 0.95)
print(t.test)
