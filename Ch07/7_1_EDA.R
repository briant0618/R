# 날짜 : 2021/06/30
# 이름 : 김동현
# 내용 : Ch07. EDA와 Data 정제하기 - EDA / P.193

# EDA = Exploratory Data Analysis 
# [ 탐색적 자료 분석 = data를 이해하기 위한 기초적인 분석 단계 ]

df_exam <- read.csv('./file/exam.csv')

# View() -> dataframe을 table로 출력
View(df_exam )

# head() , tail() -> dataframe 상위/하위 6개 미리보기
head(df_exam)
tail(df_exam)

# dim() -> dataframe 구조 확인
dim(df_exam)

# str() -> dataframe 속성 확인
str(df_exam)

# summary -> dataframe 요약 통계
summary(df_exam)

# sum -> dataframe의 합계
sum(df_exam$math)

# mean() -> dataframe의 평균
mean(df_exam$english)

#교재 p194 실습 - 실습용 데이터 가져오기
getwd()

setwd('c:/Rwork/Part-II')
dataset <- read.csv('dataset.csv', header = T)
dataset

#교재 p194 실습 - 전체 데이터 보기
print(dataset)

#교재 p195 실습 - 데이터의 앞부분과 뒷부분 보기
head(dataset)
tail(dataset)

#교재 p196 실습 - 데이터 셋 구조 보기
names(dataset)
attributes(dataset)
str(dataset)

#교재 p197 실습 - 다양한 방법으로 데이터 셋 조회하기
dataset$age
dataset$resident
length(dataset$age)

x <- dataset$gender
y <- dataset$price
x;y

plot(dataset$price)

dataset ["gender"]
dataset ["price"]

dataset[2]
dataset[5]
dataset[3,]
dataset[,3]

dataset[c("job", "price")]
dataset[c(2, 6)]
dataset[c(1, 2, 3)]
dataset[c(2, 4:6, 3, 1)]

dataset[ ,c(2:4)]
dataset[c(2:4),]
dataset[-c(1:100),]


