# 날짜 : 2021/06/28 
# 이름 : 김동현
# 내용 : CH01. R설치 및 개요 - 변수 / P39

# 변수

num1 <- 1
num2 <- 2
print(num1)
print(num2)  # R에서는 print 필요 없습니다.

str1 <- 'Hello R!'
str2 <- '안녕 R'
str1
str2

# Scala 변수 = 일반 변수
var1 <- 1
var2 <- 2
var3 <- var1 + var2
var3

# Vector 변수 = 1개 이상의 scala값을 갖는 함수(배열과 비슷하다고 생각해도 됩니다.)
x <- c(1,2,3)
y <- c('김유신','김춘추','장보고','강감찬','이순신')
x
y
x[1]
y[2]



# Factor 변수 = 문자열이 저장되는 Vector / 범주형 data에 사용된다.
str <- c('A','B','C','D','E')
f <- factor(str)
f
