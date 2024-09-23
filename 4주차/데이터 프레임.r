no <- c(1,2,3,4)
name <- c('Apple','Peach','Banna','Grape')
price <- c(500,200,100,50)
qty <- c(5,2,4,7)
sales <- data.frame(NO=no, NAME=name,PRICE=price, QTY=qty)
sales
#  NO  NAME PRICE QTY
#1  1 Apple   500   5
#2  2 Peach   200   2
#3  3 Banna   100   4
#4  4 Grape    50   7

sales2 <- matrix(c(1,'Apple',500,5,2,'Peach',200,2,3,'Banna',100,4,4,'Grape',50,7), nrow=4, byrow=T)
sales2
#     [,1] [,2]    [,3]  [,4]
#[1,] "1"  "Apple" "500" "5" 
#[2,] "2"  "Peach" "200" "2" 
#[3,] "3"  "Banna" "100" "4" 
#[4,] "4"  "Grape" "50"  "7"

df1 <- data.frame(sales2)
df1
#  X1    X2  X3 X4
#1  1 Apple 500  5
#2  2 Peach 200  2
#3  3 Banna 100  4
#4  4 Grape  50  7


class(df1)
#[1] "data.frame"
class(vector)
#[1] "function"
sapply(df1, class)
#         X1          X2          X3          X4 
#"character" "character" "character" "character"

#형변환
df2 <- transform(df1, X1=as.numeric(X1))
df2
#  X1    X2  X3 X4
#1  1 Apple 500  5
#2  2 Peach 200  2
#3  3 Banna 100  4
#4  4 Grape  50  7

#리스트로 데이터프레임 생성
list1 <- list(name='James Seo', address='Seoul', tel='010-8706-4712', pay=500)
list2 <- list(name='James Seo', address='Seoul', tel='010-8076-4712', pay=500)
a <- rbind(data.frame(list1), list2)
a
#       name address           tel pay
#1 James Seo   Seoul 010-8706-4712 500
#2 James Seo   Seoul 010-8076-4712 500

#라벨링
names(df1) <- c('NO', 'NMAE','PRICE','QTY')
df1
#  NO  NMAE PRICE QTY
#1  1 Apple   500   5
#2  2 Peach   200   2
#3  3 Banna   100   4
#4  4 Grape    50   7

#데이터 조회
sales
#  NO  NAME PRICE QTY
#1  1 Apple   500   5
#2  2 Peach   200   2
#3  3 Banna   100   4
#4  4 Grape    50   7
sales$NAME
#[1] "Apple" "Peach" "Banna" "Grape"
sales[1,3]
#[1] 500
sales[1,]
#  NO  NAME PRICE QTY
#1  1 Apple   500   5
sales[,3]
#[1] 500 200 100  50

sales[c(1,2),]
#  NO  NAME PRICE QTY
#1  1 Apple   500   5
#2  2 Peach   200   2
sales[,c(1,2)]
#  NO  NAME
#1  1 Apple
#2  2 Peach
#3  3 Banna
#4  4 Grape
sales[,c(1:3)]
#  NO  NAME PRICE
#1  1 Apple   500
#2  2 Peach   200
#3  3 Banna   100
#4  4 Grape    50

#조건추출
