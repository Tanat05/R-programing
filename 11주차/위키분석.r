setwd("c:/r_temp")
train <- read.csv("train_2.csv")
library(dplyr)
library(stringr)

nrow(train)
ncol(train)
glimpse(train)

sum(is.na(train))
sum(is.na(train))/(ncol(train)*nrow(train))

sum(sapply(train, is.numeric))

mediawiki<-train%>%filter(str_detect(Page,"mediawiki"))
wikimedia<-train%>%filter(str_detect(Page,"wikimedia"))
wikipedia<-train%>%filter(str_detect(Page,"wikipedia"))
mediawiki
install.packages("tidyverse")
library(tidyverse)
mediawiki<-mediawiki%>%
  separate(Page,into =c ("article","bar"),sep="_www.mediawiki.org_")%>%
  separate(bar,into=c("access","agent"),sep="_")%>%
  add_column(locale="medawik")
mediawiki
#연습문제 
#1
wikimedia<-wikimedia%>%
  separate(Page,into =c ("article","bar"),sep="_www.wikimedia.org_")%>%
  separate(bar,into=c("access","agent"),sep="_")%>%
  add_column(locale="wikimedia")
#Page필드에서 정보 추출
wikipedia<-wikipedia%>%
  separate(Page,into=c("foo","bar"),sep=".wikipedia.org_")%>%
  separate(foo,into=c("article","locale"),sep=-3)%>%
  mutate(locale=str_sub(locale,2,3))%>%
  separate(bar,into=c("access","agent"),sep="_")
save.image("wiki.Rdata")
load("wiki.Rdata")
save.image("wiki.Rdata")
setwd("C:/r_temp")
tpages <- rbind(wikipedia,wikimedia,mediawiki)

test <- tpages %>% filter(row_number()%in%grep("north.korea",article))

tpages %>% filter(str_detect(article,"North.Korea"))
#월별로 방문 건수를 그래프로 표현
test<-tpages %>% filter(str_detect(article,"2NE1"))
tpages[grep("2NE1",tpages$article), ]
library(reshape2)
test2<-test%>%melt(id=c("article","locale","access","agent"))
#x를 제거  
test2<-test2%>%mutate(data2=substring(variable,2)) %>%
  mutate(data3=as.Date(data2,format="%Y.%m.%d"))
test2$yr_month<-format(test2$data3,"Y-%m")

test2 <- test2 %>% mutate(date2 = substring(variable,2)) %>%
  mutate(date3 = as.Date(date2, format = "%Y.%m.%d"))

test2$yr_month <- format(test2$date3, "%Y-%m")
summary <- test2 %>%
  group_by(access,yr_month) %>%
  summarize(view = sum(value))

library(ggplot2)

summary%>%
  ggplot(aes(yr_month,view,color=access)) +
  geom_line(aes(group = access)) +
  geom_point()
