# 날짜 : 2021/06/29 
# 이름 : 김동현
# 내용 : CH03. data I/O - Data 저장하기 / P98

View(Titanic)  # Titanic = R에서 제공하는 기본 Dataset
class(Titanic)

write.csv(Titanic, './file/titanic.csv', row.names = F, quote = F)
