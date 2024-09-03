var1 <- "aaa"
var2 <- 111
var3 <- Sys.Date( )
var4 <- c("a","b","c")
var1 #[1] "aaa"
var2 #[1] 111
var3 #[1] "2024-09-03"
var4 #"a" "b" "c"

#str
string1 <- "Very Easy R Programming"
string1 #[1] "Very Easy R Programming"
string2 <- "I'm James"
string2 #[1] "I'm James"

comp <- c(1,"2")
comp #[1] "1" "2"
class(comp) #[1] "chracter"

#산술
num1 <- 1
num2 <- 2
num1 + num2 #[1] 3

num1 <- 1 
char1 <- "a"
num1 + char1 #error

#연속값
seq1 <- 1:5
seq1 #[1] 1 2 3 4 5
seq2 <- "a":"f" #error

date1 <- seq(from=as.Date('2014-01-01'),to=as.Date('2014-01-31'),by=1)
date1
'''
 [1] "2014-01-01" "2014-01-02" "2014-01-03" "2014-01-04" "2014-01-05" "2014-01-06" "2014-01-07" "2014-01-08" "2014-01-09"
[10] "2014-01-10" "2014-01-11" "2014-01-12" "2014-01-13" "2014-01-14" "2014-01-15" "2014-01-16" "2014-01-17" "2014-01-18"
[19] "2014-01-19" "2014-01-20" "2014-01-21" "2014-01-22" "2014-01-23" "2014-01-24" "2014-01-25" "2014-01-26" "2014-01-27"
[28] "2014-01-28" "2014-01-29" "2014-01-30" "2014-01-31"
'''


date2 <- seq(from=as.Date('2014-01-01'),to=as.Date('2014-05-31'),by='month') 
date2 #[1] "2014-01-01" "2014-02-01" "2014-03-01" "2014-04-01" "2014-05-01"

date3 <- seq(from=as.Date('2014-01-01'),to=as.Date('2020-05-31'),by='year') 
date3 #[1] "2014-01-01" "2015-01-01" "2016-01-01" "2017-01-01" "2018-01-01" "2019-01-01" "2020-01-01"

#생성한 변수 확인
objects()
'''
 [1] "char1"   "comp"    "date1"   "date2"   "date3"   "num1"    "num2"    "seq1"    "string1" "string2" "var1"   
[12] "var2"    "var3"    "var4"
'''

#변수 삭제
str1<-"bigdata"
rm(str1)
str1 #error
objects()
'''
[1] "char1"   "comp"    "date1"   "date2"   "date3"   "num1"    "num2"    "seq1"    "string1" "string2" "var1"   
[12] "var2"    "var3"    "var4
'''
rm(list=ls( ))
objects() #character(0)
