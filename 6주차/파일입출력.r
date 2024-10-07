#경로 설정
setwd("c:/rtemp")
read.table(file, header = False, sep = " ")

#파일 입출력
fruits <- read.table('fruits.txt')
fruits

fruits <- read.table('fruits.txt', header=T)
fruits

fruit2 <- read.table('fruits_2.txt')
fruit2

fruit <- read.table('fruits.txt' ,header = T, skip=2)
fruit

fruits2 <- read.table('fruits_2.txt', header=T)
fruits2
fruit2 <- read.table('fruits_2.txt', nrow=2)
fruit2

read.table("fruits_3.csv", sep=",",header=T)

read.csv("학생별전체성적.txt", fileEncoding = "EUC-KR")

fruit4 <- read.csv('fruits_4.csv')
fruit4
fruit4 <- read.csv('fruits_4.csv', header=F)
fruit4

read.csv("학생별전체성적.txt", colClasses=c("character", "integer", "integer", "integer", "NULL", "NULL", "NULL"), fileEncoding = "EUC-KR")


#연습문제
#1
read.csv("학생별전체성적.txt", colClasses =c ("character", "NULL", "NULL", "NULL", "NULL", "NULL", "integer"), fileEncoding = "EUC-KR")

#엑셀 데이터 읽기
install.packages("xlsx")
require(xlsx)
read.xlsx("fruits_6.xls", sheetName="Sheet1")


#연습문제
#1
data1 <- read.csv("2000-2013년 연령별실업율_연령별평균.csv", fileEncoding = "EUC-KR")
data1
apply(data1[,-1], 2, mean)

#2
data2 <- read.csv("2000-2013년 연령별실업율_연령별평균.csv", fileEncoding = "EUC-KR")
data2
apply(data2[,-1], 1, max)

#3
data3 <- read.csv('1-4호선승하차승객수.csv', fileEncoding = "EUC-KR")
data3
aggregate(승차~노선번호, data3, sum)
