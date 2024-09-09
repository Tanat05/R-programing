#요소형(factor): 값의 중복되지 않은 유일한 값의 수준(level)이 정해져 있는 자료형


setwd("c:/r_temp")
txt1 <- read.csv("factor_test_utf8.txt")
txt1
#   no       name  blood sex location
#1   1     서진수     O  남     서울
#2   2     홍길동     A  남     부산
#3   3     유관순     O  여     부산
#4   4     전우치     B  남     전남
#5   5     강감찬    AB  남     강원
#6   6   신사임당     A  여     강원
#7   7   퇴계이황     B  남     충청
#8   8   율곡이이     O  남     전북
#9   9 근초고대왕     B  남     제주
#10 10   뺑덕어멈     B  여     서울
factor1 <- factor(txt1$blood)
factor1
#[1] O A O B AB A B O B B
#Levels: A AB B O
summary(factor1)
#A AB B O
#2  1 4 3
sex1 <- factor(txt1$sex)
summary(sex1)
#남 여
# 7  3
