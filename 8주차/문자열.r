install.packages("stringr")
library(stringr)

#검색
fruits <- c('apple', 'Apple', 'banana', 'pineapple')
str_detect(fruits, 'A') #A 있는 것
str_detect(fruits, '^a') #첫글자 a
str_detect(fruits, 'e$') #마지막 글자 e
str_detect(fruits, '^[aA]') #첫글자 a 또는 A
str_detect(fruits, '[aA]') #a 또는 A 있는것

str_detect(fruits, regex('a', ignore_case=T))
str_count(fruits, "(?i)a")

#갯수
fruits
str_count(fruits, regex('a', ignore_case=T))
str_count(fruits, 'a')

#합치기
str_c('apple', 'banana')
str_c('Fruits:', fruits)
str_c(fruits, 'name is', fruits)
str_c(fruits, collapse="")
str_c(fruits, collapse="-")

#반복 출력
str_dup(fruits, 3)
str_length('apple')
str_length(fruits)


str_locate('apple', 'a')
str_locate(fruits, 'a')

str_replace('apple', 'p', '*')
str_replace('apple', 'p', '**')
str_replace_all('apple', 'p', '*')

#분할
aa <- c('apple:fruit', 'beef:meet', 'cheese:dairy')
str_split(aa, ':')
fruits <- c('apple/orange/banana', 'pear/mango')
str_split(fruits, '/')

#추출
fruits <- c('apple/orange/banana', 'pear/mango')
str_sub(fruits, start=1, end=3)
str_sub(fruits, start=6, end=9)
str_sub(fruits, start=-5)

#공백제거
str_trim(' apple banana berry ')
