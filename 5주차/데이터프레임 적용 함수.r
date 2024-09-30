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

