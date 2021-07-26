# 날짜 : 2021/07/01
# 이름 : 김동현
# 내용 : Ch08. 고급 시각화 분석 - ggplot2 package P.259

# 
install.packages("ggplot2")
library("ggplot2")

mtcars
mtcars_table <- table(mtcars$cyl)
mtcars_table

# 기본 막대차트
barplot(mtcars_table)

# ggplot2 막대차트
qplot(data = mtcars, x=cyl, geom = 'bar')
ggplot(mtcars, aes(x=cyl)) +  geom_bar()

#######################
##라인차트#############
#######################

economics
# 기본 라인차트
plot(economics$date, economics$unemploy, type = 'l')

# ggplot2 라인차트
qplot(data = economics, x=date, y=unemploy, geom = 'line')
ggplot(economics, aes(x=date, y=unemploy)) + geom_line()

#######################
##박스상자#############
#######################
mpg
View(mpg)

# 기본 박스상자
boxplot(mpg$hwy ~ mpg$drv)


# ggplot2 박스상자
qplot(data=mpg, y=hwy, x=drv, geom ="boxplot")
ggplot(mpg, aes(x=drv, y=hwy)) + geom_boxplot()

#######################
#히스토그램############
#######################
iris

# 기본 histogram
hist(iris$Petal.Width)

# ggplot2 histogram
qplot(data = iris, x=Sepal.Width, geom = "histogram")
ggplot(iris, aes(x=Sepal.Width)) + geom_histogram()

#######################
#산점도################
#######################

# 기본 산점도
plot(iris[,3:4], pch = 8, col=iris$Species)

# ggplot2 산점도도
qplot(data = iris, x= Petal.Length, y=Petal.Width, color=Species, geom = 'point')
ggplot(iris, aes(x = Petal.Length, y=Petal.Width, color=Species)) + geom_point()

