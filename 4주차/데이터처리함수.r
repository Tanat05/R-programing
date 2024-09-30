library(googleVis)
Fruits
#    Fruit Year Location Sales Expenses Profit       Date
#1  Apples 2008     West    98       78     20 2008-12-31
#2  Apples 2009     West   111       79     32 2009-12-31
#3  Apples 2010     West    89       76     13 2010-12-31
#4 Oranges 2008     East    96       81     15 2008-12-31
#5 Bananas 2008     East    85       76      9 2008-12-31
#6 Oranges 2009     East    93       80     13 2009-12-31
#7 Bananas 2009     East    94       78     16 2009-12-31
#8 Oranges 2010     East    98       91      7 2010-12-31
#9 Bananas 2010     East    81       71     10 2010-12-31

#appregate 데이터 요약
aggregate(Sales~Year, Fruits, sum)
#Year Sales
#1 2008   279
#2 2009   298
#3 2010   268
aggregate(Sales~Fruit, Fruits, sum)
Fruit Sales
#1  Apples   298
#2 Bananas   260
#3 Oranges   287
aggregate(Sales~Fruit, Fruits, max)
#    Fruit Sales
#1  Apples   111
#2 Bananas    94
#3 Oranges    98

#연습
mtcars
help(mtcars)
aggregate(mpg~cyl, mtcars, mean)
#  cyl      mpg
#1   4 26.66364
#2   6 19.74286
#3   8 15.10000
aggregate(mpg~cyl, mtcars, max)
#  cyl  mpg
#1   4 33.9
#2   6 21.4
#3   8 19.2
aggregate(mpg~cyl+am, mtcars, mean)
#  cyl am      mpg
#1   4  0 22.90000
#2   6  0 19.12500
#3   8  0 15.05000
#4   4  1 28.07500
#5   6  1 20.56667
#6   8  1 15.40000
subset(mtcars, cyl==4)
#mpg cyl  disp  hp drat    wt  qsec vs am
#Datsun 710     22.8   4 108.0  93 3.85 2.320 18.61  1  1
#Merc 240D      24.4   4 146.7  62 3.69 3.190 20.00  1  0
#Merc 230       22.8   4 140.8  95 3.92 3.150 22.90  1  0
#Fiat 128       32.4   4  78.7  66 4.08 2.200 19.47  1  1
#Honda Civic    30.4   4  75.7  52 4.93 1.615 18.52  1  1
#Toyota Corolla 33.9   4  71.1  65 4.22 1.835 19.90  1  1
#Toyota Corona  21.5   4 120.1  97 3.70 2.465 20.01  1  0
#Fiat X1-9      27.3   4  79.0  66 4.08 1.935 18.90  1  1
#Porsche 914-2  26.0   4 120.3  91 4.43 2.140 16.70  0  1
#Lotus Europa   30.4   4  95.1 113 3.77 1.513 16.90  1  1
#Volvo 142E     21.4   4 121.0 109 4.11 2.780 18.60  1  1
#gear carb
#Datsun 710        4    1
#Merc 240D         4    2
#Merc 230          4    2
#Fiat 128          4    1
#Honda Civic       4    2
#Toyota Corolla    4    1
#Toyota Corona     3    1
#Fiat X1-9         4    1
#Porsche 914-2     5    2
#Lotus Europa      5    2
#Volvo 142E        4    2
aggregate(mpg~cyl+am, subset(mtcars, cyl==4), mean)
#  cyl am    mpg
#1   4  0 22.900
#2   4  1 28.075


#apply
mat1 <- matrix(c(1,2,3,4,5,6), nrow=2, byrow=T)
mat1
#     [,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6
apply(mat1, 1, sum) #각 행의 합계
#[1]  6 15
apply(mat1, 2, sum) # 각 열의 합계
#[1] 5 7 9
apply(mat1[,c(2,3)], 2, max) #2열, 3열 최대값
#[1] 5 6

#lapply 리스트가 아닌 하위 데이터구조가 들어올 경우에도 리스트로 인식
list1 <- list(Fruits$Sales) #Sales 값만 가져오기
list1
#[[1]]
#[1]  98 111  89  96  85  93  94  98  81
list2 <- list(Fruits$Profit) #Profit 값만 가져오기
list2
#[[1]]
#[1] 20 32 13 15  9 13 16  7 10

lapply(c(list1, list2), max) #list1, list2에서 최대값 list 반환
#[[1]]
#[1] 111
#
#[[2]]
#[1] 32
c(list1, list2)
#[[1]]
#[1]  98 111  89  96  85  93  94  98  81
#
#[[2]]
#[1] 20 32 13 15  9 13 16  7 10

mat1
#[,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6
lapply(mat1,max)
#[[1]]
#[1] 1
#
#[[2]]
#[1] 4
#
#[[3]]
#[1] 2
#
#[[4]]
#[1] 5
#
#[[5]]
#[1] 3
#
#[[6]]
#[1] 6
lapply(mat1, min)
#[[1]]
#[1] 1
#
#[[2]]
#[1] 4
#
#[[3]]
#[1] 2
#
#[[4]]
#[1] 5
#
#[[5]]
#[1] 3
#
#[[6]]
#[1] 6
as.list(mat1)
#[[1]]
#[1] 1
#
#[[2]]
#[1] 4
#
#[[3]]
#[1] 2
#
#[[4]]
#[1] 5
#
#[[5]]
#[1] 3
#
#[[6]]
#[1] 6
list(mat1)
#[[1]]
#[,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6

lapply(Fruits, length)
#$Fruit
#[1] 9
#
#$Year
#[1] 9
#
#$Location
#[1] 9
#
#$Sales
#[1] 9
#
#$Expenses
#[1] 9
#
#$Profit
#[1] 9
#
#$Date
#[1] 9
lapply(Fruits, class)
#$Fruit
#[1] "factor"
#
#$Year
#[1] "numeric"
#
#$Location
#[1] "factor"
#
#$Sales
#[1] "numeric"
#
#$Expenses
#[1] "numeric"
#
#$Profit
#[1] "numeric"
#
#$Date
#[1] "Date"

#sapply lapply 리스트 반환, sapply 벡터 반환
sapply(c(list1,list2), max)
#[1] 111  32

lapply(Fruits[,c(4,5)], max)
#$Sales
#[1] 111
#
#$Expenses
#[1] 91
sapply(Fruits[,c(4,5)], max)
#   Sales Expenses 
#     111       91

#tapply
tapply(Fruits$Sales, Fruits$Fruit, mean)
#  Apples  Bananas  Oranges 
#99.33333 86.66667 95.66667
tapply(Fruits$Sales, Fruits[c(1,3)], mean)
#         Location
#Fruit         East     West
#  Apples        NA 99.33333
#  Bananas 86.66667       NA
#  Oranges 95.66667       NA

#tapply를 모든 변수에 확장하면 aggregate 함수와 동일
aggregate(Fruits[4:6], list(Fruits$Fruit), max)
#  Group.1 Sales Expenses Profit
#1  Apples   111       79     32
#2 Bananas    94       78     16
#3 Oranges    98       91     15

vec1 <- c(1,2,3,4,5)
vec2 <- c(10,20,30,40,50)
vec3 <- c(100,200,300,400,500)
mapply(sum, vec1, vec2, vec3)
#[1] 111 222 333 444 555
mapply(rep, 1:4, 4:1)
#[[1]]
#[1] 1 1 1 1
#
#[[2]]
#[1] 2 2 2
#
#[[3]]
#[1] 3 3
#
#[[4]]
#[1] 4
