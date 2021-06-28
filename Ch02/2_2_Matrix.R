# 날짜 : 2021/06/28 
# 이름 : 김동현
# 내용 : CH02. data 유형과 구조 - Matrix 자료구조 / P63

# Matrix 생성

m1 <- matrix(c(1:12))
m1

m2 <- matrix(1:12, nrow = 3, ncol =4) # 3행 4열 만들기
m2

m3 <- matrix(1:12, nrow =3) # 3행에서 자동적으로 열 정렬렬
m3
m3[1,1]
m3[1,3]
m3[3,3]

m4 <- matrix(1:12, 3, byrow = T) # 행우선채움
m4

m5 <- matrix(1:12, 4, byrow = F) # 열우선채움
m5

# vector 결합을 이용한 matrix생성
x <- c(1,2)
y <- c(3,4)

M1 <- rbind(x,y)
M2 <- cbind(x,y)
M1
M2
M1[1,]
M1[,2]


M3 <- rbind(1:3, 4:6)
M4 <- cbind(1:3, 4:6)
M3
M4


#행렬 연산
M1 + M2
M1 - M2
M1 * M2 # 기본 곱 연산
M1 %*% M2  # 행렬의 곱 연산