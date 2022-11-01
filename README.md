# Table-connection-R-LaTeX
This code file provides the direct function for R to provide the LaTeX code of the statistics summary table.


The best package for R-to-LaTeX
package(stargazer)


1. Run the Regression First

```
rm(list =ls())  %clear the environment
library(MASS) 
library(ISLR2)
head(Carseats)
summary(Carseats) %descriptive statistics
?Carseats

lm.fit = lm(Sales ~.  + Income:Advertising + Price:Age, data = Carseats)
summary(lm.fit)
names(lm.fit)
coef(lm.fit)
```

2. Table
```
library(stargazer)
stargazer(lm.fit, type = "text") %the table will show on the console
stargazer(lm.fit) %the TeX code will show on the console, you can just paste it to your TeX documents.

```


3. Result-LaTeX
```
\begin{table}[!htbp] \centering 
  \caption{} 
  \label{} 
\begin{tabular}{@{\extracolsep{5pt}}lc} 
\\[-1.8ex]\hline 
\hline \\[-1.8ex] 
 & \multicolumn{1}{c}{\textit{Dependent variable:}} \\ 
\cline{2-2} 
\\[-1.8ex] & Sales \\ 
\hline \\[-1.8ex] 
 CompPrice & 0.093$^{***}$ \\ 
  & (0.004) \\ 
  & \\ 
 Income & 0.011$^{***}$ \\ 
  & (0.003) \\ 
  & \\ 
 Advertising & 0.070$^{***}$ \\ 
  & (0.023) \\ 
  & \\ 
 Population & 0.0002 \\ 
  & (0.0004) \\ 
  & \\ 
 Price & $-$0.101$^{***}$ \\ 
  & (0.007) \\ 
  & \\ 
 ShelveLocGood & 4.849$^{***}$ \\ 
  & (0.153) \\ 
  & \\ 
 ShelveLocMedium & 1.953$^{***}$ \\ 
  & (0.126) \\ 
  & \\ 
 Age & $-$0.058$^{***}$ \\ 
  & (0.016) \\ 
  & \\ 
 Education & $-$0.021 \\ 
  & (0.020) \\ 
  & \\ 
 UrbanYes & 0.140 \\ 
  & (0.112) \\ 
  & \\ 
 USYes & $-$0.158 \\ 
  & (0.149) \\ 
  & \\ 
 Income:Advertising & 0.001$^{***}$ \\ 
  & (0.0003) \\ 
  & \\ 
 Price:Age & 0.0001 \\ 
  & (0.0001) \\ 
  & \\ 
 Constant & 6.576$^{***}$ \\ 
  & (1.009) \\ 
  & \\ 
\hline \\[-1.8ex] 
Observations & 400 \\ 
R$^{2}$ & 0.876 \\ 
Adjusted R$^{2}$ & 0.872 \\ 
Residual Std. Error & 1.011 (df = 386) \\ 
F Statistic & 209.988$^{***}$ (df = 13; 386) \\ 
\hline 
\hline \\[-1.8ex] 
\textit{Note:}  & \multicolumn{1}{r}{$^{*}$p$<$0.1; $^{**}$p$<$0.05; $^{***}$p$<$0.01} \\ 
\end{tabular} 
\end{table} 
```
