data1 %>%
  select(선수명, 팀, 경기, 타수) %>%
  filter(타수>400)

filter(select(data1, 선수명, 팀, 타수), 타수>400)  

data1 %>%
  select(선수명, 팀, 경기, 타수) %>%
  filter(타수>400) %>%
  arrange(타수)

data1 %>% select(선수명, 팀, 경기, 타수) %>%
  mutate(경기x타수=경기*타수) %>%
  arrange(경기x타수)
