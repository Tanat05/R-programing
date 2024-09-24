#appregate 데이터 요약
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
