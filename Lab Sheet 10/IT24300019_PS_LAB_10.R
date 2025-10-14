getwd()
setwd("C:/Users/it24300019/Desktop/IT24300019_PS-10")

observed <- c(55, 62,43,46,50) 
prob <- c(.2,.2,.2,.2,.2)
chisq.test (x=observed,p=prob)

#not goin to reject the vlue with 5% level of significance . 

file.path <- ("http://www.sthda.com/sthda/RDoc/data/housetasks.txt")
housetasks <- read.delim(file.path,row.names = 1)
housetasks

chisq <- chisq.test(housetasks)
chisq

# therefor reject the null hypothasis (p < 0.05)


observed <- c(120 , 95 ,85 ,100)
prob <- rep(0.25 ,4)
chisq.test(x = observed, p =prob)


#Since the p-value (0.089) is greater than the significance level of 0.05, we fail to reject the null hypothesis.
#Therefore, there is not enough evidence to conclude that customers prefer some snack types more than others.
#The data is consistent with the claim that all four snack types are equally likely to be chosen.