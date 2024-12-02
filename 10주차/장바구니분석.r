
setwd("C:/rtemp")
train <- read.csv("train_2.csv")
sum(is.na(train))
sum(is.na(train))/(ncol(train)*nrow(train))

mediawiki <- train %>%
  filter(str_detect(Page, "mediawiki"))
wikimedia <- train %>%
  filter(str_detect(Page, "wikimedia"))
wikipedia <- train %>%
  filter(str_detect(Page, "wikipedia"))

install.packages("tidyverse")
library(tidyverse)
df <- data.frame(x=c("a", "a b", "a b c", NA))
df %>%
  separate(x, c("a", "b"))

mediawiki %>%
  separate(Page, into=c("article", "bar"), sep="_www.mediawiki.org_")

mediawiki %>%
  separate(Page, into=c("article", "bar"), sep="_www.mediawiki.org_") %>%
  separate(bar, into=c("access", "agent"), sep="_")

mediawiki %>%
  separate(Page, into=c("article", "bar"), sep="_www.mediawiki.org_") %>%
  separate(bar, into=c("access", "agent"), sep="_") %>%
  add_column(locale="medwik")

mediawiki <- mediawiki %>%
  separate(Page, into=c("article", "bar"), sep="_www.mediawiki.org_") %>%
  separate(bar, into=c("access", "agent"), sep="_") %>%
  add_column(locale="medwik")
mediawiki

wikimedia <- wikimedia %>%
  separate(Page, into=c("article", "bar"), sep="_www.wikimedia.org_") %>%
  separate(bar, into=c("access", "agent"), sep="_") %>%
  add_column(locale="wikimedia")
wikimedia

wikipedia <- wikipedia %>%
  separate(Page, into=c("foo", "bar"), sep=".wikipedia.org_")

wikipedia %>%
  separate(Page, into=c("foo", "bar"), sep=".wikipedia.org") %>%
  separate(foo, into=c("article", "locale"), sep=-3) %>%
  mutate(locale=str(sub(locale,2,3)))

wikipedia %>%
  separate(Page, into=c("foo", "bar"), sep=".wikipedia.org") %>%
  separate(foo, into=c("article", "locale"), sep=-3) %>%
  mutate(locale=str(sub(locale,2,3))) %>%
  separate(bar, into=c("access", "agent"), sep="_")

tpages <- c(wikipedia, wikimedia, mediawiki)
tpages %>%
  filter(grep("north.korea", article))

test <- tpages %>%
  filter(str_detect(article, "2NE1"))
tpages[grep("2NE1", tpages$article), ]

test2 <- test %>%
  melt(id=c("article", "locale", "access", "agent"))

test2 <- test2 %>%
  mutate(date2=substing(variable, 2)) %>%
  mutate(data3=as.Date(data2, format="&Y%m%d"))

test2$yr_month <- format(test2$date3, "%Y-%m")

summary <- test2 %>%
  group_by(access, yr_month) %>%
  summarize(view=sum(value))


summary %>%
  ggplot(aes(yr_month, view, color=access))
geom_line(aes(group=access))
geom_point()
theme(axis.text.x=element_text(angle=90, hjust=1, vjust=0.5))
