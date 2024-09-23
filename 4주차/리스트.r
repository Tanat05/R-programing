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
