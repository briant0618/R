# 날짜 : 2021/07/01
# 이름 : 김동현
# 내용 : Ch09. 정형과 비정형 데이터처리 - MySQL 데이터 처리 P.292

# MySQL Drive package 설치
install.packages('RMySQL')
library('RMySQL')
library('dplyr')
library('ggplot2')

# 1단계 [DB접속]
conn <- dbConnect(MySQL(), 
                  host='13.209.73.49', 
                  user='briant', 
                  password='k2917h06', 
                  dbname='siopmy')

# 2단계 [Query 실행]
df_user <- dbGetQuery(conn, statement = 'SELECT * FROM `USER1`;')
Encoding(df_user$name) <- 'UTF-8'
View(df_user)

# 매출 데이터 불러오기
df_sale <- dbGetQuery(conn, statement = 'SELECT * FROM `Sale`;')
Encoding(df_sale$name) <- 'UTF-8'
View(df_sale)

# 직원별 매출을 그룹화
df_result <- df_sale %>% group_by(uid) %>% summarise(total = sum(sales)) %>% arrange(desc(total))
View(df_result)

# 시각화
ggplot(data = df_result, aes(x=uid,y=total)) + geom_col()

# 3단계 [DB종료]
dbDisconnect(conn)

