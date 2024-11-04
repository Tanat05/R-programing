library(googleVis)
#table로 요약
table_result <- table(Fruits["Fruit"])
table_result

table_result <- table(Fruits[c("Fruit", "Location")])
table_result
class(table_result)

table_result[1,2]
table_result["Oranges", "East"]

#table > dataframe
d_table <- as.data.frame(table_result)
d_table

#연습문제
install.packages("dplyr")
library(dplyr)
filter(d_table, Freq>0)
subset(d_table, Freq>0)

#종합예제
install.packages("MASS")
library(MASS)
str(Cars93)
#Type, Origin, MPG.city, MPG.highway 으로만 데이터프레임 생성
Cars93_dataframe <- Cars93[c("Type", "Origin", "MPG.city", "MPG.highway")]
#차종 별 데이터 개수 산출
summary(Cars93_dataframe["Type"])
#이중에서 Compact와 Van만 선별
subset(Cars93_dataframe, Type=="Compact"|Type=="Van")

library(reshape2)
Cars93_sample_melt <-  melt(Cars93_dataframe, id=c("Type", "Origin"), variable.names="variable", value.name="value")
Cars93_sample_melt

dcast(data=Cars93_sample_melt, Type~variable, fun=mean)
