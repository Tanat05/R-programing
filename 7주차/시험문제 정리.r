library(googleVis)
Fruits

#Fruits 데이터에서 과일 종류별 최대 판매량(Sales)을 구하는 코드
#>aggregate(Fruits, Sales~Fruit,  max)
#고칠 부분이 없음
aggregate(Sales~Fruit, Fruits,  max)

#Fruits 데이터에서 이익의 역순으로 (이익갑이 큰것부터 작은것까지) 데이터를 정렬
#> Fruits[ order(Fruits$Profit) ]
#sort() 정렬, rev() 역순 

#날짜형 데이터가 아래와 같이 나오도록 포맷을 지정하였다.
#> as.Date("12012019",  format=”%y%m%d” ) 
#[1] "2019-12-01"
#년월일 %Y%m%d, 4자리 년도는 대문자 Y로 사용
as.Date("12012019",  format="%d%m%Y")

#Fruits데이터 프레임에서 Fruit, Locationa별로 Sales의 최대값을 구하고자 한다.
#aggregate(Sales~cbind(Fruit, Location),Fruits, max)
aggregate(Sales~Fruit+Location,Fruits, max)

#다음의 결과를 쓰시오.
#> mat1
#     [,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6
#> apply(mat1,2,sum)
#mat1에서 각 열(세로)의 합계, 2가 아니라 1이면 행(가로)의 합계
[1] 5 7 9

#다음의 결과를 쓰시오.
#>lapply(Fruits[4:6], max)
#Fruits의 4, 5, 6번 열의 최대값
$Sales
[1] 111
$Expenses
[1] 81
$Profit
[1] 32

#내장 함수를 사용하여 baseball 데이터프레임에서 팀 별로 경기와 득점 합(변수별로 각각)을 각각 구하시오. 코드는 하나로 쓸것 (두개쓰면 틀림)
aggregate(경기+득점~팀, baseball, sum)

order(Fruits$Profit)
Fruits[order(Fruits$Profit)]

as.Date("12012019",  format="%d%m%Y")

aggregate(Sales+Profit~Fruit+Location,Fruits, max)


mat1 <- data.frame(c(1,2,3),c(4,5,6), )
mat1

apply(mat1,2,sum)

lapply(Fruits[4:6], max)

subset(Fruits, Location=="East")$Fruit

no <- c(1,2,3,4)
name <- c('Apple','Peach','Banana','Grape')
price <- c(500,200,100,50)
qty <- c(5,2,4,7)

data.frame(NO=no, NAME=name, PRICE=price, QTY=qty)

apply(Fruits[c(4,5)], 2, mean)


apply(Fruits[c(4,5,6)], 1, max)

var7 <- c(1,3,4,5,6)
1==var7

read.csv()


x <- c(2,NA,4)
mean(x)
mean(x, num=TRUE)

data <- seq(from=as.Date("2015-01-01"), to=as.Date("2015-01-31"), by=1)
data
