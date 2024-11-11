setwd("C:/rtemp")
orders <- read.csv("orders.csv")
products <- read.csv("products.csv")
order_products <- read.csv("order_products_prior.csv")

install.packages("knitr")
library(knitr)
kable(head(oders, 20))

install.packages("dplyr")
library(dplyr)
orders %>%
  group_by(oder_dow) %>%
  summarise(count=n())

install.packages("ggplot2")
library(ggplot2)
orders %>%
  ggplot(aes(x=order_dow)) + geom_histogram(stat="count", fill="red")

order %>%
  ggplot(aes(x=days_since_prior_order)) +
  geom_histogram(stat="count", fill="red")

order_products %>%
  group_by(order_id) %>%
  summarize(n_items = last(add_to_cart_order))

