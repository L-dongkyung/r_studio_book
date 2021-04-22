x<-10
x
x1 <- c(10, 15, 21)
x1
"hello"
print("hello")
x2<-c(2:7)
x2
y1<-c('hello', ' ', 'world','!!')
y1
y2<-c('hello',' ','world','!!')
y2
x3<-seq(0,8)
x3
x4<-seq(10,20,2)
x4
y3<-c(10, 11,12,13)
y4<-c('hi', 10, 0.3)
y5<-c(0.1, 0.3)
y5<-seq(0.1, 0.9,0.1)
y.x.<-10
print(y.x....)
rm(y.x.)
ID <-c(1,2,3,4,5)
MID_EXAM<-c(10,25,100,75,30)
CLASS<-c('1반', '2반','3반','1반','2반')
example_test<-data.frame(ID,MID_EXAM,CLASS)
rm(class)
View(example_test)
install.packages("readxl")
library(readxl)
excel_data_ex<-read_excel("C:/Rstudy/data_ex.xls")
View(excel_data_ex)
ex_data<-read.table("C://rstudy/data_ex.txt", header = TRUE, skip = 2, nrows = 7)
ex_data1<-read.table("C://rstudy/data_ex1.txt", header = TRUE, sep = ",")
varname<-c("1:ID","2:SEX", "3:AGE","4:AREA")
ex_data2<-read.table("C://rstudy/data_ex2.txt", sep=",", col.names = varname)
View(ex_data2)
ID<-c(1,2,3,4,5)
SEX<-c('F','M','F','M','F')
data_ex<-data.frame(ID,SEX)
save(data_ex, file="data_ex.rda")
rm(data_ex)
load("c:/rstudy/data_ex.rda")
View(data_ex)
data_ex<-data.frame(ID = ID, SEX=SEX)
write.csv(data_ex, file = "c:/rstudy/data_ex5.txt")
write.table(data_ex, file = "c:/rstudy/data_ex_quote.txt", quote = FALSE)
exdata1 %>% arrange(desc(AGE))
exdata1 <- read_excel("c:/rstudy/exdata1.xlsx")
exdata1 %>% arrange(Y17_CNT, desc(Y17_AMT))
exdata1 %>% arrange(desc(AREA), Y17_AMT)
exdata1 %>% summarise(TOT_Y17_AMT= sum(Y17_AMT))
sum(exdata1$Y17_AMT)
exdata1 %>% summarise("17년 이용금액"=sum(Y17_AMT))
ID
exdata1
exdata1 %>% group_by(AREA) %>% summarise(SUM_Y17_AMT = sum(Y17_AMT))
library(dplyr)
m_history <- filter(exdata1, exdata1$SEX == "M")
f_history <- filter(exdata1, exdata1$SEX == "F")
m_history <- m_history[,-c(9:11)]
f_history <- f_history[,-c(9:11)]
