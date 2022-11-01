rm(list =ls())
library(MASS)
library(ISLR2)
head(Carseats)
summary(Carseats)
?Carseats

lm.fit = lm(Sales ~.  + Income:Advertising + Price:Age, data = Carseats)
summary(lm.fit)
names(lm.fit)
coef(lm.fit)

library(stargazer)
stargazer(lm.fit, type = "text")
stargazer(lm.fit)
