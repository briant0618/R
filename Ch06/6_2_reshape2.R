# 날짜 : 2021/06/30
# 이름 : 김동현
# 내용 : Ch06. Data 조작 - reshape2 패키지활용 / P.184


#교재 p184 실습 - reshape2 패키지 설치와 데이터 가져오기
install.packages('reshape2')

data <- read.csv("c:/Rwork/Part-II/data.csv")
data

library(reshape2)

#교재 p185 실습 - 넓은 형식으로 변경하기
wide <- dcast(data, Customer_ID ~ Data, sum)

#교재 p185 실습 - 파일 저장 및 읽기
setwd("C:/Rwork/Part-II")
write.csv(wide, "wide.csv", row.names = FALSE)

wide <- read.csv('wide.csv')
colnames(wide) <- c('Customer_ID', 'day1', 'day2', 'day3',
                    'day4', 'day5', 'day6', 'day7')
wide

#교재 p186 실습 - 넓은 형식의 데이터를 긴 형식으로 변경하기
long <- melt(wide, id = "Customer_ID")
long

name <- c('Customer_ID', 'Date', 'Buy')
colnames(long) <- name
head(long)

#교재 p186 실습 - smiths 데이터셋 확인하기
data('smiths')
smiths

long <- melt(id = 1:2, smiths)
long

dcast(long, subject + time ~ ...)
