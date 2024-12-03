setwd("c:/rtemp")

install.packages("tidyverse")
library(tidyverse)

flights <- read.csv("flights.csv")

flights %>%
  .$AIRLINE
flights %>%
  .[["AIRLINE"]]

by_test <- group_by(flights, DESTINATION_AIRPORT)
delay <- summarise(by_test, count = n(), dist = mean(DISTANCE, na.rm = TRUE), delay = mean(ARRIVAL_DELAY, na.rm = TRUE))
delay

select(flights, contains("TIME"))

flights_sml <- select(flights, YEAR:DAY, ends_with("DELAY"), DISTANCE)
flights_sml

flights %>%
  filter(between(ARRIVAL_DELAY, 0, 60))
