install.packages("dplyr")
library(dplyr)

library(googleVis)
Fruits
filter(Fruits, Profit>=10) #subset
select(Fruits, Profit, Expenses) #인덱스
mutate(Fruits, total_profit=Profit-Expenses) #transform()
arrange(Fruits, desc(Profit), desc(Sales)) #order(), sort()
summarise(Fruits, Profit_mean=mean(Profit)) #aggregate()

transform(Fruits, cusum_profit=cumsum(Profit))
subset(Fruits, Sales>20, select=c(Fruit, Sales))
aggregate(Sales~Fruit+Location, Fruits, mean)
aggregate(cbind(Sales, Expenses)~Fruit+Year, Fruits, mean)
aggregate(Sales+Expenses~Fruit, Fruits, mean)

aggregate(.~Fruit, Fruits, mean)
aggregate(Sales~., Fruits, mean)

install.packages("dplyr")
library(dplyr)
setwd("C:/r_temp")
data1 <- read.csv("2013년_프로야구선수_성적.csv", fileEncoding ="EUC-KR")
data1
str(data1)
head(data1)
tail(data1)

data2 <- filter(data1, 경기>=120)
data2
data3 <- filter(data1, 경기>=120&득점>80)
data3
data4 <- filter(data1, 포지션%in%c('1루수', '3루수'))
data4
select(data1, 선수명, 포지션, 팀)
select(data1, 순위:타수)
select(data1, -홈런, -타점, -도루)
