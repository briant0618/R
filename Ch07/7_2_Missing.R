# 날짜 : 2021/06/30
# 이름 : 김동현
# 내용 : Ch07. EDA와 Data 정제하기 - 결측치 / P.200

# Missing Value 
library(dplyr)

# 결측치를 갖는 D-F 불러오기
df_exam <- read.csv('./file/exam_na.csv')
View(df_exam)

# D-F 가공전에 결측지 존재여부 확인
is.na(df_exam)

# 결측치 갖는 행을 제거합니다 [ 원래는 0으로 만들긴 합니다만..]

df_new <- df_exam %>% filter(!is.na(math) & !is.na(english) & !is.na(science))
View(df_new)

# 기본 통계분석
df_new %>% mutate(total = math + english + science, mean = total / 3) %>% arrange(desc(total)) 

#교재 p201 실습 - summary() 함수를 사용하여 결측치 확인하기
summary(dataset$price)
sum(dataset$price)

#교재 p201 실습 - sum() 함수의 속성을 이용하여 결측치 제거하기
sum(dataset$price, na.rm = T)

#교재 p201 실습 - 결측치 제거 함수를 이용하여 결측치 제거
price2 <- na.omit(dataset$price)
sum(price2)
length(price2)

#교재 p202 실습 - 결측치를 0으로 대체하기
x <- dataset$price
x[1:30]

dataset$price2 <- ifelse(!is.na(x), x, 0)
datasets$price2[1:30]

#교재 p202 실습 - 결측치를 평균으로 대체하기
x <- datasets$price
x[1:30]

dataset$price3 = ifelse(!is.na(x), x, round(mean(x, na.rm = TRUE), 2))
dataset$price3[1:30]

dataset[c('price', 'price2', 'price3')]