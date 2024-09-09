#NA : 잘못된 값이 들어 올 경우나 값이 없는 경우( Not Applicable , Not Available )
#NULL : 값이 들어갈 공간이 없는 경우

cat(1, NA, 2) #[1] 1 NA 2
cat(1,NULL,2) #[1] 1 2
sum(1,NA,2) #[1] NA
sum(1,NULL,2) #[1] 3

sum(1,2,NA) #[1] NA
sum(1,2,NA,na.rm=T) #[1] 3
