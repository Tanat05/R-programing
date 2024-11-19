setwd("C:/rtemp")
orders <- read.csv("orders.csv")
products <- read.csv("products.csv")
order_products <- read.csv("order_products__prior.csv")


install.packages("knitr")
library(knitr)
kable(head(orders, 20))


install.packages("dplyr")
library(dplyr)
orders %>%
  group_by(order_dow) %>%
  summarise(count=n())


install.packages("ggplot2")
library(ggplot2)
orders %>%
  ggplot(aes(x=order_dow)) + geom_histogram(stat="count", fill="red")
orders %>%
  ggplot(aes(x=days_since_prior_order)) + geom_histogram(stat="count", fill="red")


order_products %>%
  group_by(order_id) %>%
  summarize(n_items = last(add_to_cart_order))
order_products %>%
  group_by(order_id) %>%
  summarize(n_items = last(add_to_cart_order))


order_products %>%
  group_by(order_id) %>%
  summarize(n_items = last(add_to_cart_order)) %>%
  ggplot(aes(x=n_items)) + geom_histogram(stat="count", fill="red")

#그래프를 표로
order_products %>%
  group_by(order_id) %>%
  summarize(n_items = last(add_to_cart_order))


tmp <- order_products %>%
  group_by(product_id) %>%
  summarize(count=n()) %>%
  top_n(10, wt=count)
merge(subset(products, select = c("product_id", "product_name"))) %>%
  arrange(desc(count))
order_products %>%
  group_by(product_id) %>%
  summarize(count=n()) %>%
  top_n(10, wt=count) %>%
  merge(subset(products, select=c("product_id", "product_name"))) %>%
  arrange(desc(count))

tmp <- products %>%
  group_by(department_id, aisle_id) %>%
  summarize(n=n())
head(tmp)

departments <- read.csv("departments.csv")
tmp <- tmp %>%
  left_join(departments, by="department_id")
tmp

aislse <- read.csv("aisles.csv")
tmp <- tmp %>%
  left_join(aisles, by="aisle_id")
tmp


install.packages("treemap")
library(treemap)

treemap(tmp, index=c("department", "aisle_id"), vSize="n", vColor="department")
