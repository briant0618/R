# 날짜 : 2021/06/29 
# 이름 : 김동현
# 내용 : CH05. data 시각화 - 막대차트 / P139


# 기본 막대차트
count <- c(1,2,3,4,5)
barplot(count)

score <- c(80, 72, 60, 76, 82)
names(score) <- c('김유신','김춘추','장보고','강감찬','이순신')
barplot(score)

# 범주형 막대차트
season <- c('winter','summer','spring','summer','summer','autumn',
            'autumn','summer','spring','spring','spring')

season
ds <- table(season)
ds

barplot(ds, main = 'season')
barplot(ds, main = 'season', col = c('blue','red','green','yellow')) # 색 custom한것. 
barplot(ds, main = 'season', col = rainbow(4))  # rainbow색 염색 [팔렛트 함수]
barplot(ds, main = 'season', col = heat.colors(4))  #  [팔렛트 함수2]
barplot(ds, main = 'season', col = terrain(4))   #  [팔렛트 함수3]

barplot(ds, main = 'season', col = rainbow(4), xlab = '계절', ylab = '빈도수') # x y축 이름 설정
barplot(ds, main = 'season', col = rainbow(4), xlab = '계절', ylab = '빈도수', horiz = T) # 가로막대

# 누적 막대차트
df_sample <- read.csv('./file/sample_population.csv')
df_sample

View(df_sample)
matrix_sample <- as.matrix(df_sample) 
matrix_sample

barplot(matrix_sample)
barplot(matrix_sample, col = heat.colors(4))
barplot(matrix_sample, col = rainbow(3), beside = T, legend.text = T)


# 교재 p140 실습 - 세로 막대 차트 그리기

chart_data <- c(305, 450, 320, 460, 330, 480, 380, 520)
names(chart_data) <- c('2018 1분기', '2019 1분기',
                       '2018 2분기', '2019 2분기',
                       '2018 3분기', '2019 3분기',
                       '2018 4분기', '2019 4분기')

str(chart_data)
chart_data

barplot(chart_data, ylim = c(0, 600), col = rainbow(8), main = '2018년도 vs 2019년도 매출현황 비교')

 
# 교재 p141 실습 - barplot() 함수 도움말 보기
help('barplot')

# 교재 p141 실습 - 막대차트의 가로축과 세로축에 레이블 추가하기
barplot(chart_data, 
        ylim = c(0, 600), 
        ylab = "매출액(단위 : 만원)",
        xlab = "년도별 분기 현황",
        col = rainbow(8), 
        main = '2018년도 vs 2019년도 매출현황 비교')

# 교재 p142 실습 - 가로 막대차트 그리기

barplot(chart_data, xlim = c(0, 600), horiz = T,
        ylab = '매출액(단위 : 만원',
        xlab = '년도별 분기 현황',
        col = rainbow(8),
        main = '2018년도 vs 2019년도 매출현황 비교')
# 교재 p142 실습 - 막대차트에서 막대 사이의 간격 조정하기

barplot(chart_data, xlim = c(0, 600), horiz = T,
        ylab = '매출액(단위 : 만원',
        xlab = '년도별 분기 현황',
        col = rainbow(8), space = 1, cex.names = 0.8,
        main = '2018년도 vs 2019년도 매출현황 비교')


# 교재 p143 실습 - 막대차트에서 막대의 색상 지정하기

barplot(chart_data, xlim = c(0, 600), horiz = T,
        ylab = '매출액(단위 : 만원',
        xlab = '년도별 분기 현황',
        space = 1, cex.names = 0.8,
        main = '2018년도 vs 2019년도 매출현황 비교',
        col = rep(c(2,4),4))

# 교재 p143 실습 - 막대 차트에서 색상이름을 사용하여 막대의 색상 지정하기
barplot(chart_data, xlim = c(0, 600), horiz = T,
        ylab = '매출액(단위 : 만원',
        xlab = '년도별 분기 현황',
        space = 1, cex.names = 0.8,
        main = '2018년도 vs 2019년도 매출현황 비교',
        col = rep(c('red','blue'),4))

# 교재 p144 실습 - 누적 막대 차트 그리기

data("VADeaths")
VADeaths



# 교재 p144 실습 - VADeaths 데이터셋 구조 보기
str(VADeaths)

class(VADeaths)

mode(VADeaths)
