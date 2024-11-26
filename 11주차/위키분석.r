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

tpages <- ???(wikipedia, wikimedia, mediawiki)
tpages %>%
  filter(grep("north.korea", article))
