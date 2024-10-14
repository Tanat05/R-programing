#함수
myfunct1 <- function(){
  return(10)
}
myfunct1
myfunct1()

myfunct2 <- function(a){
  b <- a^2
  return(b)
}
myfunct2(3)

myfunct3 <- function(a, b){
  c <- a*b
  return(c)
}
myfunct3(2, 3)

#조건문
f_plus <- function(x){
  if (x<0){
    return(-x)
  }
  else {
    return(x)
  }
}
f_plus(1)
f_plus(-1)

mf1 <- function(x) {
  if (x>0) {
    x <- x*x
    return(x)
  }
  else {
    x <- x*0
    return(x)
  }
}
mf1(2)
mf1(-1)
mf1(0)

mf2 <- function(x) {
  if (x>0) {
    x <- x*2
    return(x)
  }
  else if (x==0) {
    x <- 0
    return(x)
  }
  else {
    x <- -x*2
    return(x)
  }
}
mf2(3)
mf2(0)
mf2(-3)

no <- 10
ifelse(no%%2==0, '짝수', '홀수')

#연습문제
myf1 <- function(x) {
  if (x>=0) {
    return(1)
  }
  else {
    return(0)
  }
}

myf2 <- function(x) {
  if (x <= 0) {
    return(0)
  }
  else if (x <= 5) {
    return(1)
  }
  else {
    return(10)
  }
}


#반복문
no <- 0
while (no<5){
  print(no)
  no <- no+1
}

x <- 1
while (x<5) {
  x <- x+1
  if (x==4) {
    break
  }
  print(x)
}

x <- 1
while (x<3) {
  x <- x+1
  if (x==2){
    next
  }
  print(x)
}

x <- 1
while (x<5) {
  x <- x+1
  if (x==4){
    next
  }
  print(x)
}

#for 반복문
for1 <- function(x) {
  for (i in 1:x) {
    print(i)
  }
}
for1(3)

for3 <- function(z) {
  for (i in 1:z*10){
    print(i)
  }
}
for3(5)

for2 <- function(x) {
  i <- 0
  for (j in 1:x) {
    i <- i +j
  }
  print(i)
}
for2(10)
for2(100)

my_ray4 <- c(1, 3, 5, 7 , 9, 12)
colors <- c()
for (i in 1:length(my_ray4))
