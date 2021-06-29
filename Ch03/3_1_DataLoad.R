# 날짜 : 2021/06/29 
# 이름 : 김동현
# 내용 : CH03. data I/O - Data 불러오기 / P95



# column명이 들어간 파일 불러오기
student <- read.table('./file/student.txt')
student
class(student)

student1 <- read.table('./file/student1.txt', header = T)
student1


# 구분자가 있는 파일 불러오기
student2 <- read.table('./file/student2.txt',sep = ';', header = T)
student2

# 결측치 있는 파일 불러오기
student3 <- read.table('./file/student3.txt', header = T, na.strings = '-')
student3

# csv 파일 불러오기
student4 <- read.csv('./file/student4.txt', header = T, na.strings = '-')
student4

# Excel 파일 불러오기
install.packages('readxl')
library(readxl)
student5 <- read_excel('./file/studentexcel.xlsx')
student5
  