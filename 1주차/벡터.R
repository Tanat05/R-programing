c(1,2,3,4,5)
#[1] 1 2 3 4 5
c(1,2,3,4,"5")
#[1] "1" "2" "3" "4" "5"

vec1 <- c(1,2,3,4,5)
vec1
#[1] 1 2 3 4 5
vec1[3]
#[1] 3
vec1[-3]
#[1] 1 2 4 5
vec1[1:(length(vec1)-2)]
#[1] 1 2 3
vec1[-1:-3]
#[1] 4 5

vec1[2:4]
#[1] 2 3 4
vec1 <- c(1,2,3,4,5) 
vec1[2]
#[1] 2
vec1[2] <- 6
vec1
#[1] 1 6 3 4 5
vec1 <- c(vec1,7)
vec1
#[1] 1 6 3 4 5 7

vec1[9] <- 9
vec1
#[1]  1  6  3  4  5  7 NA NA  9

append(vec1,10,after=3)
#[1]  1  6  3 10  4  5  7 NA NA  9
append(vec1,c(10,11),after=3)
#[1]  1  6  3 10 11  4  5  7 NA NA  9


#사칙연산
c(1,2,3) + c(4,5,6)
#[1] 5 7 9
c(1,2,3) + 1
#[1] 2 3 4
var1 <- c(1,2,3)
var2 <- c(3,4,5)
var1 + var2
#[1] 4 6 8
var3 <- c('3','4',5)
var1 + var3
#error


#순환연산
var4 <- c(1,2,3,4,5)
var1
#[1] 1 2 3
var4
#[1] 1 2 3 4 5
var1 + var4
#[1] 2 4 6 7
#error


#백터의 길이
var1
#[1] 1 2 3
length(var1)
#[1] 3
NROW(var1)
#[1] 3

#length() 백터의 요소 갯수
#length() = NROW()


#벡터에 문자 포함 여부
var7 <- seq(from=1, to=9, by=2)
var7
#[1] 1 3 5 7 9
3 %in% var7
#[1] TRUE
4 %in% var7
#[1] FALSE


#벡터 조작(manipulation)
z <- c(5,2,-3,8)
w <- z[z *z >8]
w
#[1]  5 -3  8
z <- c(5,2,-3,8)
z
#[1]  5  2 -3  8
z *z>8
#[1]  TRUE FALSE  TRUE  TRUE

x <- c(6,1:3,NA,12)
x
#[1]  6  1  2  3 NA 12
x[x > 5]
#[1]  6 NA 12
subset(x, x > 5)
#[1]  6 12

z <- c(5,2,-3,8)
which(z*z > 8)
#[1] 1 3 4

fruits <- c(10,20,30)
fruits
names(fruits) <- c('apple', 'banana', 'peach')
fruits
# apple banana  peach 
#    10     20     30
names(fruits)
#[1] "apple"  "banana" "peach"


#문제
#1. 다음과 같이 vec1을 생성하시오
vec1 <- c('사과', '배', '감', '버섯', '고구마')
vec1
#[1] "사과"   "배"     "감"     "버섯"   "고구마"
#2. Vec1에서 3번째 요소인 ‘감’을 제외하고 vec1의 값을 출력하시오.
vec1[-3]
#[1] "사과"   "배"     "버섯"   "고구마"
