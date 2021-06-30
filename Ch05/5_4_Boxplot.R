# 날짜 : 2021/06/29 
# 이름 : 김동현
# 내용 : CH05. data 시각화 - 박스차트 / P148

# 박스차트 = 요약 통계 확인시 많이 사용

# 박스차트 기본

cars  # 스피드에 따른 제동거리를 다룬 Sample-DataSet
View(cars)
class(cars)

dist <- cars[,2]
class(dist)

boxplot(dist, main = '자동차 제동거리')
boxplot.stats(dist) # 상태값


# 붓꽃 데이터 분석
iris
boxplot(data = iris, Petal.Length ~ Species)
boxplot(data = iris, Sepal.Length ~ Species)


# 교재 p148 실습 - VADeaths 데이터셋을 상자그래프로 시각화하기

boxplot(VADeaths, range = 0)

# 교재 p149 실습 - VADeaths 데이터셋의 요약통계 보기
summary(VADeaths)
