# 날짜 : 2021/06/28 
# 이름 : 김동현
# 내용 : CH02. data 유형과 구조 - Dataframe 자료구조 / P71

# Dataframe = DB의 table을 생각하시면 됩니다.
a <- c(1,2)
b <- c(3,4)
c <- c(T,F)

df1 <- data.frame(a, b, c)
df1

df2 <- data.frame(num  = c(1, 2, 3),
                  name = c('김유신','김춘추','강감찬'),
                  age  =  c(31,29,42))
df2

uid  <- c('a101','a102','a103','a104','a105')
name <- c('김유신','김춘추','장보고','강감찬','이순신')
hp   <- c('010-1234-0001',
         '010-1234-0002',
         '010-1234-0003',
         '010-1234-0004',
         '010-1234-0005')
pos  <- c('대리','과장','사원','부장','과장')
def  <- c(101,102,103,104,105)
member_df <- data.frame(uid,name,hp,pos,def)
member_df

# dataframe의 data 출력
df2$name[1]
df2$name[2]


member_df$uid[1]
member_df$uid[3]
member_df$name[4]
member_df$hp[3]

# dataframe 필수 내장 함수
iris
class(iris)   # 데이터 유형 확인
View(iris)    # iris dataframe을 표형식으로 확인 
head(iris)     # dataframe 상위 6개
tail(iris)    # dataframe 하위 6개
str(iris)     # dataframe column 자료유형 확인
dim(iris)     # dataframe의 행렬구조 확인
names(iris)   # dataframe의 attribute(column명)
summary(iris) # dataframe 요약통계 확인

# iris[,-5]   # dataframe 에서 -5번째를 제외한 값 나와와
aggregate(iris[,-5], by=list(iris$Species), mean)
aggregate(iris[,-5], by=list(iris$Species), max)
