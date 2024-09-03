cat(1, NA, 2) #[1] 1 NA 2
cat(1,NULL,2) #[1] 1 2
sum(1,NA,2) #[1] NA
sum(1,NULL,2) #[1] 3

sum(1,2,NA) #[1] NA
sum(1,2,NA,na.rm=T) #[1] 3
