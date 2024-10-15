#[틀린 부분 찾아 수정하기] 3점, 틀린 부분을 찾아 동그라미 치고, 정답을 작성하시오(코드 전체 다 쓸것)

#>Fruits
#    Fruit  Year   Location.   Sales Expenses Profit       Date 
#1  Apples 2008     West    98       78     20  2008-12-31         
#2  Apples 2009     West   111       79     32  2009-12-31        
#3  Apples 2010     West    89       76     13  2010-12-31        
#4	 Oranges 2008     East    96       81     15  2008-12-31       

#Fruits 데이터에서 과일 종류별 최대 판매량(Sales)을 구하는 코드
#>aggregate(Fruits, Sales~Fruit, max)
고칠 부분이 없음 Fruits와 Sales~Fruit는 위치를 서로 변경해도 문제가 없지만 max의 위치는 변경하면 안됨

#Fruits 데이터에서 이익의 역순으로 (이익갑이 큰것부터 작은것까지) 데이터를 정렬
#> Fruits$Profit[order(Fruits$Profit)]
sort() 정렬, rev() 역순 order() 정렬했을때 위치값
Fruits$Profit Fruits에서 Profit만 가져오기 [1] 20 32 13 15
order(c(20, 32, 13, 15)) 20은 정렬하면 3번째 이므로 3 이런식으로 나온다. [1] 3 4 1 2
Fruits$Profit[c(3,4,1,2)] Profit을 3, 4, 1, 2 순서로 불러온다. [1] 13 15 20 32
rev(c(13, 15, 20, 32)) 역순으로 변경한다. [1] 32 20 15 13
이 과정을 하나의 코드로 작성하면 아래의 코드가 나옴
rev(Fruits$Profit[order(Fruits$Profit)])

#날짜형 데이터가 아래와 같이 나오도록 포맷을 지정하였다.
#> as.Date("12012019",  format=”%y%m%d” ) 
#[1] "2019-12-01"
년월일 %Y%m%d, 4자리 년도는 대문자 Y로 사용 24년도 같은 2자리 년도는 소문자 y
as.Date("12012019",  format="%d%m%Y")
#[1] "2019-01-12"

#Fruits데이터 프레임에서 Fruit, Locationa별로 Sales의 최대값을 구하고자 한다.
#aggregate(Sales~cbind(Fruit, Location),Fruits, max)
aggregate(Sales~Fruit+Location,Fruits, max)


#[결과 작성하기] 3점, 콘솔창에 나오는 그대로 쓸것 ([1] 이런것 포함)

#다음의 결과를 쓰시오.
#> mat1
#     [,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6
#> apply(mat1,2,sum)
mat1에서 각 열(세로)의 합계, 2가 아니라 1이면 행(가로)의 합계
[1] 5 7 9

#다음의 결과를 쓰시오.
#>lapply(Fruits[4:6], max)
Fruits의 4, 5, 6번 열의 최대값, $헤더 형태도 나오는 것을 주의
$Sales
[1] 111
$Expenses
[1] 81
$Profit
[1] 32




#코드작성) 각 5점

#	>basedball 
#선수명	포지션	팀	경기	타수	득점
#김태균	1루수	한화	101	345	41
#박병호	1루수	넥센	128	450	91
#최정	3루수	SK	120	434	75
#박석민	3루수	삼성	117	396	61
#손아섭	우익수	롯데	128	498	83
#정성훈	3루수	LG	121	407	64
#배영섭	중견수	삼성	113	393	66
#나지완	좌익수	KIA	125	435	57
#박정권	1루수	SK	110	363	56
#박용택	중견수	LG	125	476	79

#내장 함수를 사용하여 baseball 데이터프레임에서 팀 별로 경기와 득점 합(변수별로 각각)을 각각 구하시오. 코드는 하나로 쓸것 (두개쓰면 틀림)
aggregate(경기+득점~팀, baseball, sum)
#또는
aggregate(baseball, 경기+득점~팀, sum)

#내장 함수를 사용하여 위의 baseball 데이터에서 경기 수가 120이상인 행만 추출하시오
subset(baseball, 경기>=120)

#baseball 데이터에서 포지션이 1루수인 선수들의 이름을 추출하는 코드를 작성하시오
subset(baseball,포지션=="1루수")$선수명

#위의 baseball 데이터에 득점이 60점 이상인지의 여부에 따라 80점 이상이면 good, 60점 이상이면 fair의 값을 , 60점 미만이면 bad를 가지는 type변수를 추가하시오. 
함수?
작성중...




#사용자에게 임의의 세 수를 입력으로 받아서 가장 큰 값을 반환하는 함수를 만드시오
입력함수는 수업내용에 X

#no, name, price, qty 벡터를 이용하여 아래와 같은 sales 데이터 프레임을 생성하시오.
#> no <- c(1,2,3,4)
#> name <- c('Apple','Peach','Banana','Grape')
#> price <- c(500,200,100,50)
#> qty <- c(5,2,4,7)
출력에서 헤더가 대문자이므로 대문자로 나오도록 하기
data.frame(NO=no, NAME=name, PRICE=price, QTY=qty)
#> sales
#  NO   NAME PRICE QTY
#1  1  Apple   500   5
#2  2  Peach   200   2
#3  3 Banana   100   4
#4  4  Grape    50   7




#1.png 참고

#아래 콘솔창의 결과와 같이 년도별 평균 실업률 구하는 코드를 작성하시오.
#다음의 테이블(데이터프레임명 : sample_data)
sample_data[,-1] 첫번째 열(세로)만 제외
apply(데이터, 2(2면 열(세로) 1이면 행(가로)), mean) 각 열의 평균
apply(sample_data[,-1], 2, mean)

#다음과 같이 연령별 평균 최대실업률을 구하는 코드를 작성하시오. 
#> [1] 7.4500 3.1625 2.4875 2.4250 1.2625
작성중...




#다음의 두 테이블을 ID를 기준으로 일치하는 행을 기준으로 두 테이블을 결합하는 코드를 작성하시오. 
#결합 결과는 오른쪽 테이블임
#2.png 참고 오른쪽 테이블은 3.png 참고
merge()는 둘 다 존재하는 데이터만 합치고 all=T 옵션으로 모든 데이터를 보존하고 NA값을 추가한다.
해당 문제에서는 NA값이 안보이기 떄문에 all=T 옵션을 사용할 필요가 없음
merge(math, english)




#[빈칸 채우기)] 빈칸당(문제당 아님) 3점

#이 벡터 var7 안에 있는지를 테스트하는 코드이다.
#var7
#[1] 1 3 5 7 9
#3 __________ var7
작성중...
#[1] TRUE

#작업폴더를 c:\temp로 설정하려고 한다.
#setwd(_______________)
문자형만 받으므로 ""로 문자형으로 넣을 것
setwd("c:\temp")

#아래의 fruits_long.csv 파일을 R로 불어오고자 한다.
#a<-___________________(fruits_long.csv)
a <- read.csv(fruits_long.csv)
#4.png 참고

#sales(17번) 테이블에서 name 변수값이 Apple인 데이터만 추출하려고한다.
#>_____________(sales,NAME_________”Apple”)
사진 상에서는 NAME이 아니라 name이 맞음
subset(sales, name=="Apple")

#NA를 제외하고, x의 평균을 구하고자 한다..
#> x <- c(2,NA,4)
#> mean(x)
#[1] NA
#> mean(x,   ____________ =TRUE)
작성중...
#[1] 3

#Data라는 변수에 2015년 1월 1일부터 2015년 1월 31일까지 1씩 증가하는 날짜를 입력하는 방법을 쓰세요.
#data <- ________(____________(“2015-01-01”), __두번째 괄호와 같음___(“2015-01-31”)))
seq() 반복데이터 as.Date() 날짜형 데이터로 변환
data <- seq(from=as.Date("2015-01-01"), to=as.Date("2015-01-31"), by="day")
#또는
data <- seq(from=as.Date("2015-01-01"), to=as.Date("2015-01-31"), by=1)
