data1 %>%
  group_by(팀) %>%
  summarise(avg=mean(경기, na.rm=TRUE))

data1 %>%
  group_by(팀) %>%
  summarise_each(funs(mean), 경기, 타수)
#오류 나면 아래 코드로
data1 %>%
  group_by(팀) %>%
  summarise(across(c(경기, 타수), mean))

data1 %>%
  group_by(팀) %>%
  summarise_each(funs(mean, n()), 경기, 타수)
#오류 나면 아래 코드로
data1 %>%
  group_by(팀) %>%
  summarise(across(c(경기, 타수), list(mean=~mean(.), n=~n())))

Fruits %>%
  group_by(Fruit) %>%
  summarise_if(is.numeric, mean)
