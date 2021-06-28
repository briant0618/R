# 날짜 : 2021/06/28 
# 이름 : 김동현
# 내용 : CH02. data 유형과 구조 - vector 자료구조 / P58

# Vector = R에서 가장 많이 사용하는 자료구조 [배열과 동일]

v1 <- c(1,2,3,4,5)
v1
v1[1] # R은 index 번호가 1부터 시작한다.
v1[2]

v2 <- 1:6
v2
v2[4]
v2[6]

# Vector 연산
x <- 1:4
y <- 5:8
x;y
x+y
x-y
x*y

# Seq 함수로 vector 생성하기
v3 <- seq(1,10, by=2)
v3

# vector의 합과 평균
sum_v1 <- sum(v1)
sum_v1

sum_v2 <- sum(v2)
sum_v2

mean_v1 <- mean(v1)
mean_v1

mean_v2 <- mean(v2)
mean_v2