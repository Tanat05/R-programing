list1 <- list(name='James Seo',
             address='Seoul',
             tel='010-8706-4712',
             pay=500)
list1
#$name
#[1] "James Seo"
#
#$address
#[1] "Seoul"
#
#$tel
#[1] "010-8706-4712"
#
#$pay
#[1] 500

list1$name
#[1] "James Seo"

list1[1:2]
#$name
#[1] "James Seo"
#
#$address
#[1] "Seoul"

list1$birth <- '1975-10-23'
list1
#$name
#[1] "James Seo"
#
#$address
#[1] "Seoul"
#
#$tel
#[1] "010-8706-4712"
#
#$pay
#[1] 500
#
#$birth
#[1] "1975-10-23"

list1$name <- c('Seojisu', 'James Seo')
list1$name
#[1] "Seojisu"   "James Seo"

list1$pay2 <- matrix(c(1,2,3,4),2,2)
list1$pay2
#     [,1] [,2]
#[1,]    1    3
#[2,]    2    4

#연습문제
#list1$pay2 에 2*2 행렬이 2층으로 구성된 배열 추가하시오
#1층
#1,2
#3,4
#2층
#4,5
#1,2
list1$pay2 <- array(c(matrix(c(1,2,3,4),2,2, byrow=T), matrix(c(4,5,1,2),2,2, byrow=T)), dim=c(2,2,2))
list1$pay2
#또는
list1$pay2 <- array(c(1,3,2,4,4,1,5,2), dim=c(2,2,2))
list1$pay2
#, , 1
#
#     [,1] [,2]
#[1,]    1    2
#[2,]    3    4
#
#, , 2
#
#     [,1] [,2]
#[1,]    4    5
#[2,]    1    2

list1$birth <- NULL
list1
#$name
#[1] "Seojisu"   "James Seo"
#
#$address
#[1] "Seoul"
#
#$tel
#[1] "010-8706-4712"
#
#$pay
#[1] 500
#
#$pay2
#, , 1
#
#     [,1] [,2]
#[1,]    1    2
#[2,]    3    4
#
#, , 2
#
#     [,1] [,2]
#[1,]    4    5
#[2,]    1    2

list1$birth <- NA
list1
#$name
#[1] "Seojisu"   "James Seo"
#
#$address
#[1] "Seoul"
#
#$tel
#[1] "010-8706-4712"
#
#$pay
#[1] 500
#
#$pay2
#, , 1
#
#     [,1] [,2]
#[1,]    1    2
#[2,]    3    4
#
#, , 2
#
#     [,1] [,2]
#[1,]    4    5
#[2,]    1    2
#
#
#$birth
#[1] NA
