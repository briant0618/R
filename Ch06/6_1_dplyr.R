# 날짜 : 2021/06/30
# 이름 : 김동현
# 내용 : Ch06. Data 조작 - dplyr 패키지 활용 / P.169

install.packages('dplyr')
# dplyr = DataFrame 가공 처리해주는 함수들을 적용하는 package
library('dplyr')

df_exam <- read.csv('./file/exam.csv')
View(df_exam)

# select - dataframe에서 특정 column 선택해서 새로운 dataframe 생성
df_math <- df_exam %>%  select(math)  # %>% 연산자의 단축기 cirl + shift + m

df_rs1 <- df_exam %>%  select(math, science)
View(df_rs1)

df_rs2 <- df_exam %>%  select(everything())
View(df_rs2)

# filter
df_ft <- df_exam %>% select(everything()) %>% filter(class == 1)
View(df_ft)

df_ft1 <- df_exam %>% select(everything()) %>% filter(english >= 60 & english < 80)
View(df_ft1)

df_ft2 <- df_exam %>% filter(science >= 60 & science <= 80)
View(df_ft2)

df_ft3 <- df_exam %>% filter(class == 1) %>% select(math)
# 중요! = filter랑 select는 먼저 설정한 놈 부터 앞에 써줘야 합니다.
View(df_ft3)

df_ft4 <- df_exam %>% filter(math >60 & math < 80)
View(df_ft4)


# arrange = sql의 order by절과 비슷
df_arr1 <- df_exam %>% arrange(math)
df_arr1

df_arr2 <- df_exam %>% arrange(desc(math))
df_arr2

# 예시 
# select class, id, math from df_exam where math >=60 order by math desc limit 3
df_result <- df_exam %>%  select(class, id, math) %>% 
             filter(math >= 60 ) %>% 
             arrange(desc(math)) %>% 
             head(3)

# mutate = dataframe에 새로운 특정 column(파생변수)를 생성
df_mut <- df_exam %>% mutate(total = math + english + science)
View(df_mut)

df_mut2 <- df_mut %>% mutate(mean = total / 3)
View(df_mut2)

df_mut3 <- df_mut2 %>% mutate(grade = ifelse(mean >= 90, 'A', 
                                      ifelse(mean >= 80, 'B',
                                      ifelse(mean >= 70, 'C',
                                      ifelse(mean >= 60, 'D', 'F')))))
View(df_mut3)

# summarise = dataframe의 특정 column에 대한 요약통계
df_exam %>% summarise(mean_mat = mean(math))
df_exam %>% summarise(sum_math = sum(math))

# group by
df_gb <- df_exam %>% group_by(class) %>% summarise(sum_math = sum(math))
df_gb2 <- df_exam %>% group_by(class) %>% summarise(mean_math = mean(math))

# inner join
df_teacher <- data.frame(class = c(1, 2, 3, 4, 5),
                         teacher = c('KimY','KimC','Jang','Kang','lee'))
df_teacher
df_join <- inner_join(df_exam, df_teacher, by = 'class' )
df_join


#교재 p169 실습 - iris 데이터셋을 대상으로 %>% 연산자를 이용하여 함수 적용하기
iris %>% head()
iris %>% head() %>% subset(Sepal.Length >= 5.0)

#교재 p170 실습 - dplyr패키지와 hflight 데이터셋 설치
install.packages('hflights')
library(hflights)

#교재 p171 실습 - hflight 데이터셋 구조 보기
str(hflights)

#교재 p171 실습 - tbl_df() 함수 사용하기
hflights_df <- tbl_df(hflights)
hflights_df

#교재 p172 실습 - hflights_df를 대상으로 특정일의 데이터 추출하기
filter(hflights_df, Month == 1 & DayofMonth == 2)

#교재 p173 실습 - hflights_df를 대상으로 지정된 월의 데이터 추출하기
filter(hflights_df, Month == 1 | Month == 2)

#교재 p174 실습 - hflights_df를 대상으로 데이터 정렬하기
arrange(hflights_df, Year, Month, DepTime, ArrTime)

#교재 p175 실습 - hflights_df를 대상으로 지정된 칼럼 데이터 검색하기
select(hflights_df, Year, Month, DepTime, ArrTime)

#교재 p175 실습 - hflights_df를 대상으로 칼럼의 범위로 검색하기
select(hflights_df, Year:ArrTime)

#교재 p176 실습 - hflights_df에서 출발 지연시간과 도착 지연시간의 차이를 계산한 컬럼 추가하기
flight_mut <- mutate(hflights_df, gain = ArrDelay - DepDelay,
                                  gain_per_hour = gain / (AirTime / 60))
View(flight_mut)

#교재 p177 실습 - mutate()함수에 의해 추가된 칼럼 보기
select(mutate(hflights_df, 
        gain = ArrDelay - DepDelay,
        gain_per_hour = gain / (AirTime / 60)),
        Year, Month, ArrDelay, DepDelay, gain, gain_per_hour)

#교재 p177 실습 - hflights_df에서 비행시간의 평균 구하기
summarise(hflights_df, agAirTime = mean(AirTime, na.rm = TRUE))

#교재 p178 실습 - hflights_df의 관측치 길이 구하기
summarise(hflights_df, cnt = n(), delay = mean(AirTime, na.rm = TRUE))

#교재 p178 실습 - 도착시간의 표준편차와 분산 계산하기
summarise(hflights_df, arrTimeSd = sd(ArrTime, na.rm = TRUE),
                       arrTimeVar = var(ArrTime, na.rm = TRUE))


#교재 p178 실습 - 집단변수를 이용하여 그룹화하기
species <- group_by(iris, Species)
str(species)
species
#교재 p180 실습 - 공통변수를 이용하여 내부 조인하기
df1 <- data.frame(x = 1:5, y = rnorm(5))
df2 <- data.frame(x = 2:6, z = rnorm(5))
df1;df2

inner_join(df1, df2, by = 'x')

#교재 p180 실습 - 공통변수를 이용하여 왼쪽 조인하기
left_join(df1, df2, by = 'x')

#교재 p181 실습 - 공통변수를 이용하여 오른쪽 조인하기
right_join(df1, df2, by = 'x')

#교재 p181 실습 - 공통변수를 이용하여 전체 조인하기
full_join(df1, df2, by = 'x')

#교재 p182 실습 - 두 개의 데이터프레임을 행 단위로 합치기
df3 <- data.frame(x = 1:5, y = rnorm(5))
df4 <- data.frame(x = 6:10, y = rnorm(5))
df3;df4

df_rows <- bind_rows(df3, df4)
df_rows

#교재 p183 실습 - 두 개의 데이터프레임을 열 단위로 합치기
df_cols <- bind_cols(df3, df4)
df_cols

#교재 p183 실습 - 데이터프레임의 칼럼명 수정하기
df_rename <- rename(df_rows, x2 = x1)
df_reanme <- rename(df_rename, y2 = y1)
df_reanme

