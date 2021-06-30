# 날짜 : 2021/06/29 
# 이름 : 김동현
# 내용 : CH05. data 시각화 - 산점도 / P154

mtcars
View(mtcars)

wt <- mtcars$wt
mpg <- mtcars$mpg

plot(wt, mpg)
plot(wt, mpg, col = "skyblue", pch = 8)


View(iris)
ds_iris <- iris[,3:4]

group <- as.numeric(iris$Species)
group

color <- c('red','skyblue','green')

plot(ds_iris, pch = 8, col = color[group])




# 교재 p154 실습 - 산점도 그래프에 대각선과 텍스트 추가하기

# 교재 p155 실습 - type 속성으로 산점도 그리기

# 교재 p156 실습 - pch 속성으로 산점도 그리기

# 교재 p162 실습 - iris 데이터셋의 4개 변수를 상호 비교