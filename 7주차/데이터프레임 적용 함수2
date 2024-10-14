names <- c('Jack', 'jill', 'woo')
ages <- c(12,10,14)
d <- data.frame(names, ages)
d
#  names ages
#1   woo   12
#2  jill   10
#3   Tom   14

names <- c('woo', 'jill', 'Tom')
family <- c(3,10,4)
d2 <- data.frame(names, family)
d2
#  names family
#1   woo      3
#2  jill     10
#3   Tom      4

merge(d, d2)
#  names ages family
#1  jill   10     10
#2   Tom   14      4
#3   woo   12      3


kids <- c('Jack', 'jill', 'woo')
ages <- c(12,10,14)
d <- data.frame(kids, ages)
d
#   kids ages
#1   woo   12
#2  jill   10
#3   Tom   14

names <- c('woo', 'jill', 'Tom')
family <- c(3,10,4)
d2 <- data.frame(names, family)
d2
#  names family
#1   woo      3
#2  jill     10
#3   Tom      4

merge(d, d2, by.x="kids", by.y="names")
#  kids ages family
#1 jill   10     10
#2  woo   14      3
merge(d, d2, by.x="kids", by.y="names", all=T)
#  kids ages family
#1 Jack   12     NA
#2 jill   10     10
#3  Tom   NA      4
#4  woo   14      3
merge(d, d2, by.x=1, by.y=1, all=T)
#  kids ages family
#1 Jack   12     NA
#2 jill   10     10
#3  Tom   NA      4
#4  woo   14      3


name <- c("apple", "banana", "cherry")
price <- c(300, 200, 100)
df1 <- data.frame(name,price)
df1
#    name price
#1  apple   300
#2 banana   200
#3 cherry   100
new <- data.frame(name="mango", price=400)
df1 <- rbind(df1, new)
df1
#    name price
#1  apple   300
#2 banana   200
#3 cherry   100
#4  mango   400

df1 <- rbind(df1, data.frame(name="berry", price=500))
df1


member2 <- subset(member, select=c(NO, NAME, TEL))
member2

member3 <- subset(member, select=-TEL)
member3

colnames(member3) <- c("번호", "이름", "주소", "취미")
member3

a <- c(1, 2, 3, 4, 5)
b <- c(2, 4, 6, 8, 10)
cor(a, b)#상관함수
a
cumsum(a)#설정된 지점까지의 누적합
cumprod(a)#설정된 지점까지의 누적곱
c <- c(1, 6, 2, 4, 8)
order(c)#각 요소의 원래 위치
sort(c)#정렬
prod(a) #각 요소 곱하기
a

v <- c(1, 2, 3, 4, 5)
v
range(v)#범위값
rank(v)#각 요소의 순위
rev(v)#역순
sd(v)#표준편차
sum(v)#총합
summary(v)#요약통계량

install.packages("googleVis")
library(googleVis)
Fruits

#연습문제
sum(Fruits$Sales)

dif <- diff(Fruits$Sales)
dif <- append(dif, 0, after=0)
cbind(Fruits, dif)


subset(Fruits, Fruit=="Apples")
subset(Fruits, Fruit!="Apples")

Fruits[, 4]
class(Fruits[, 4])
Fruits[, 4, drop=FALSE]
class(Fruits[, 1, drop=FALSE])

aggregate(Sales~Year, Fruits, sum)
aggregate(Sales~Fruit, Fruits, sum)
aggregate(Sales~Fruit, Fruits, max)
aggregate(Sales~Fruit+Year, Fruits, max)

#연습문제
aggregate(Sales~Location, Fruits, sum)
aggregate(Profit~Fruit, Fruits, max)
