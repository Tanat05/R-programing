setwd("c:/rtemp")
a <- scan("문재인대통령취임사.txt", what='', fileEncoding="cp949")
a
b <- readLines("bb.txt")
b

str_count(b, "감사")
sum(str_count(b, "감사"))

str_length(b)
plot(str_length(b))

#연습문제
문장 <- scan("문재인대통령취임사.txt", what="", sep=".", fileEncoding="cp949")
문장
plot(str_length(문장))
