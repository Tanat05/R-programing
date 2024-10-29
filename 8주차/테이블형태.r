setwd("C:/rtemp")
fruits <- read.table("fruits.txt", header = TRUE)
fruits

install.packages("reshape2")
library(reshape2)

#wide > long
melt(fruits, id=c('no','name'))
a <- melt(fruits, id=c('no', 'name'), variable.names='stats', value.name='value')

#long > wide
dcast(a, no+name~stats)

#연습문제1
score <- read.csv("학생별전체성적_new.txt", header = TRUE, sep = ",")
score

score_long <- melt(score, id="이름", variable.name = "과목", value.name = "점수")
score_long

#연습문제2
aggregate(점수~과목, score_long, mean)
apply(score[,-1], 2, mean)
