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
subset(d_table, Freq>0)
