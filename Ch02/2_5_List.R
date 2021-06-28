# 날짜 : 2021/06/28 
# 이름 : 김동현
# 내용 : CH02. data 유형과 구조 - List 자료구조 / P78

x1 <- seq(1:5)
x2 <- matrix(1:6, nrow = 2)
x3 <- data.frame(col1 = c(1,2), col2 = c('김유신','김춘추'))

x1;x2;x3

ls <- list(e1 = x1, e2 =  x2, e3 = x3)
ls

# 원래 list는 서로의 data type이 같아야 합니다. but R의 list는 서로 달라도 상관없어용~

ls$e1[3]
ls$e2[1, 2]
ls$e3$col2[1]