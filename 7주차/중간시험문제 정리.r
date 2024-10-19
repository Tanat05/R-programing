#OX) 각 2점
#1. length() 함수는 데이터의 변수 수를 세는 함수이다.
답: O
#2. R에서 데이터 저장의 가장 작은 구조는 요소형이다.
답: X
#3. 값의 수준이 몇 개로 한정되어 있는 데이터 타입을 팩터형이라고 한다.
답: O
#4. 요소의 데이터 타입이 서로 다르고 2차원으로 구성된 데이터 구조를 데이터프레임이라고 한다.
답: O

#[틀린 부분 찾아 수정하기] 3점, 틀린 부분을 찾아 동그라미 치고, 정답을 작성하시오(코드 전체 다 쓸것)

#>Fruits
#    Fruit  Year   Location.   Sales Expenses Profit       Date 
#1  Apples 2008     West    98       78     20  2008-12-31         
#2  Apples 2009     West   111       79     32  2009-12-31        
#3  Apples 2010     West    89       76     13  2010-12-31        
#4	 Oranges 2008     East    96       81     15  2008-12-31       

#5. Fruits 데이터에서 과일 종류별 최대 판매량(Sales)을 구하는 코드
#>aggregate(Fruits, Sales~Fruit, max)
고칠 부분이 없음
Fruits와 Sales~Fruit는 위치를 서로 변경해도 문제가 없지만 max의 위치는 변경하면 안됨
답: aggregate(Sales~Fruit, Fruits, max #교수님 마지막 ) 어디갔나요 그리고 원래 코드로 정상작동합니다.



#6. Fruits 데이터에서 이익의 역순으로 (이익갑이 큰것부터 작은것까지) 데이터를 정렬
#> Fruits[order(Fruits$Profit)]
rev() 역순 order() 정렬했을때 위치값
Fruits[rev(order(Fruits$Profit)),] 큰것부터 작은값이면 이게 맞지 않나..

답: Fruits[order(Fruits$Profit),]

#7. 날짜형 데이터가 아래와 같이 나오도록 포맷을 지정하였다.
#> as.Date("12012019",  format=”%y%m%d” ) 
#[1] "2019-12-01"
년월일 %Y%m%d, 4자리 년도는 대문자 Y로 사용 24년도 같은 2자리 년도는 소문자 y
답: as.Date("12012019", format="%m%d%Y")


#9. Fruits데이터 프레임에서 Fruit, Locationa별로 Sales의 최대값을 구하고자 한다.
#aggregate(Sales~cbind(Fruit, Location),Fruits, max)
답: aggregate(Sales~Fruit+Location, Fruits, max)


#[결과 작성하기] 3점, 콘솔창에 나오는 그대로 쓸것 ([1] 이런것 포함)

#10. 다음의 결과를 쓰시오.
#> mat1
#     [,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6
#> apply(mat1,2,sum)
mat1에서 각 열(세로)의 합계, 2가 아니라 1이면 행(가로)의 합계
답: [1] 5 7 9

#11. 다음의 결과를 쓰시오.
#>lapply(Fruits[4:6], max)
lapply는 apply와 다르게 열, 행 기준인지 정하지 않고 자동으로 열 기준으로 작동 또한 list 형태로 반환
Fruits의 4, 5, 6번 열의 최대값, $헤더 형태도 나오는 것을 주의
답: 
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

#12. 내장 함수를 사용하여 baseball 데이터프레임에서 팀 별로 경기와 득점 합(변수별로 각각)을 각각 구하시오. 코드는 하나로 쓸것 (두개쓰면 틀림)
list(baseball$팀)
[[1]]
[1] 한화 넥센 SK 삼성 롯데 LG 삼성 KIA SK LG
Levels: 한화 넥센 SK 삼성 롯데 LG KIA
baseball[c("경기","득점")]
 경기	득점
1 101  41
2 128  91
3 120  75
4 117  61
5 128  83
6 121  64
7 113  66
8 125  57
9 110  56
10 125  79
답: aggregate(baseball[c("경기","득점")],list(baseball$팀), sum)
Group.1 경기 득점
1  한화  101   41
2  넥센  128   91
3   SK   238  141
4  삼성  230  127
5  롯데  128   83
6   LG   246  143
7  KIA   125   56

#13. 내장 함수를 사용하여 위의 baseball 데이터에서 경기 수가 120이상인 행만 추출하시오
답: subset(baseball, 경기>=120)

#14. baseball 데이터에서 포지션이 1루수인 선수들의 이름을 추출하는 코드를 작성하시오
subset(baseball, 포지션=="1루수")로 1루수인 데이터만 불러오고 $선수명으로 선수의 이름만 불러온다.

답: subset(baseball,포지션=="1루수")[c("선수명")]
  선수명
1 김태균
2 박병호
3 박정권

결과의 데이터타입이 다를 뿐 문제에서 제시하는 조건을 만족하기 때문에 아래 코드로 정답 가능성 있음
subset(baseball, 포지션=="1루수")$선수명
[1] 김태균 박병호 박정권
Levels: 김태균 박병호 박정권

#15. 위의 baseball 데이터에 득점이 60점 이상인지의 여부에 따라 80점 이상이면 good, 60점 이상이면 fair의 값을 , 60점 미만이면 bad를 가지는 type변수를 추가하시오. 
답: baseball$type<-ifelse(baseball$득점>=60,”good”,ifelse(baseball$득점>”fair”,”bad”))




#16. 사용자에게 임의의 세 수를 입력으로 받아서 가장 큰 값을 반환하는 함수를 만드시오
답:
myf1 <- function(x,y,z){
  return(max(x,y,z))
}


#17. no, name, price, qty 벡터를 이용하여 아래와 같은 sales 데이터 프레임을 생성하시오.
#> no <- c(1,2,3,4)
#> name <- c('Apple','Peach','Banana','Grape')
#> price <- c(500,200,100,50)
#> qty <- c(5,2,4,7)
출력에서 헤더가 대문자이므로 대문자로 나오도록 하기
답: data.frame(NO=no, NAME=name, PRICE=price, QTY=qty)

만약 대문자가 아닌 no name price qty가 그대로 나왔다면
data.frame(no, name, price, qty)로 작성 가능
#> sales
#  NO   NAME PRICE QTY
#1  1  Apple   500   5
#2  2  Peach   200   2
#3  3 Banana   100   4
#4  4  Grape    50   7





#18. 아래 콘솔창의 결과와 같이 년도별 평균 실업률 구하는 코드를 작성하시오.
#다음의 테이블(데이터프레임명 : sample_data)
#1.png 참고
#X2000년 X2001년 X2002년 X2003년 X2004년 X2005년 X2006년 X2007년 
#   3.88    3.52    2.92    3.22    3.36    3.48    3.32    3.16 
sample_data[,-1] 첫번째 열(세로)만 제외
apply(데이터, 2, mean) 각 열의 평균, 2이면 열(세로) 1이면 행(가로)
답: apply(sample_data[,-1], 2, mean)


#19. 다음과 같이 연령별 평균 최대실업률을 구하는 코드를 작성하시오. 
#> [1] 7.4500 3.1625 2.4875 2.4250 1.2625
답: 없음 #교수님 안배워서 답이 없는 건가요 아님 진짜 답이 없는 건가요




#20. 다음의 두 테이블을 ID를 기준으로 일치하는 행을 기준으로 두 테이블을 결합하는 코드를 작성하시오. 
#결합 결과는 오른쪽 테이블임
#2.png 참고 오른쪽 테이블은 3.png 참고
merge()는 둘 다 존재하는 데이터만 합치고 all=T 옵션으로 모든 데이터를 보존하고 값이 없는 부분에 NA값을 추가한다.
해당 문제에서는 NA값이 안보이기 떄문에 all=T 옵션을 사용할 필요가 없음
merge(math, english)

답: merge(english,math, by.x="ID",by.y="ID")




#[빈칸 채우기)] 빈칸당(문제당 아님) 3점

#21. 이 벡터 var7 안에 있는지를 테스트하는 코드이다.
#var7
#[1] 1 3 5 7 9
#3 __________ var7
해당 부분 배운적이 있나...? 파이썬이면 in...
답: 3 %in% var7
#[1] TRUE

#22. 작업폴더를 c:\temp로 설정하려고 한다.
#setwd(_______________)
문자형만 받으므로 ""로 문자형으로 넣을 것
/와 \\ 주의
setwd("c:\\temp")
또는
setwd("c:/temp")

답: setwd(c:\\r_temp) 또는 setwd(c:/r_temp)

#23. 아래와 같이 데이터를 R로 불어오고자한다.
#a<-_____________(fruits_long.csv)
"" 주의
답: a<-read.csv("fruits_long.csv")

#24. sales 테이블에서 name 변수값이 Apple인 데이터만 추출하려고한다.
#>_____________(sales,name_________”Apple”)
답: subset(sales, name=="Apple")

#25. NA를 제외하고, 평균을 구하고자 한다.
#> x <- c(2,NA,4)
#> mean(x)
#[1] NA
#> mean(x, _________=TRUE)
#[1] 3
답: na.rm #교수님 이거 배운적 없어요


#26. Data라는 변수에 2015년 1월 1일부터 2015년 1월 31일까지 1씩 증가하는 날짜를 입력하는 방법을 쓰세요.
#data <- ________(____________(“2015-01-01”), __두번째 괄호와 같음___(“2015-01-31”)))
seq() 반복데이터 as.Date() 날짜형 데이터로 변환
data <- seq(from=as.Date("2015-01-01"), to=as.Date("2015-01-31"), by="day")
또는
data <- seq(from=as.Date("2015-01-01"), to=as.Date("2015-01-31"), by=1)

답: data <- seq(as.Date(“2015-01-01”, “2015-01-31”)) #교수님 이거 오류나요
