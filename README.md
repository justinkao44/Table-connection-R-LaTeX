# Table-connection-R-LaTeX
This code file provides the direct function for R to provide the LaTeX code of the statistics summary table.



Demonstrate

```
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
```
