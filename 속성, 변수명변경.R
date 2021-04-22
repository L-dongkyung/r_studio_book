ID <- c(1,2,3,4,5,6)
SEX<- c("F","M","F","M","M","F")
AGE<- c(50,40,28,50,27,23)
AREA <- c("서울","경기","제주","서울","서울","서울")
AMT17 <- c(1300000, 450000,275000,400000,845000,42900)
Y17_CNT <- c(50,25,10,8,30,1)
AMT16<- c(100000,700000,50000,125000,760000,300000)
Y16_cnt <-c(40,30,5,3,28,6)
install.packages("readxl")
library(readxl)
sample1 = data.frame(ID,SEX,AGE,AREA,AMT17,Y17_CNT,AMT16,Y16_cnt)
write_xlsx(sample1, path = "sample1.xlsx")
write.csv(sample1, file = "sample1.csv")

exdata1 = read_excel("c:/rstudy/sample1.xlsx")
exdata1
View(exdata1)
str(exdata1)
dim(exdata1)
ls(exdata1)
install.packages("dplyr")
library(dplyr)
exdata1 = rename(exdata1, Y17_AMT=AMT17, Y16_AMT=AMT16)
View(exdata1)

exdata1$AMT = exdata1$Y17_AMT + exdata1$Y16_AMT
exdata1$CNT = exdata1$Y17_CNT + exdata1$Y16_cnt
exdata1$AVG_AMT = exdata1$AMT / exdata1$CNT
exdata1$AGE50_YN = ifelse(exdata1$AGE >= 50, 'Y', "N")
exdata1$AGE_GR10 = ifelse(exdata1$AGE >=50, "A1.50++",
                          ifelse(exdata1$AGE >=40, "A2.4049",
                                 ifelse(exdata1$AGE>=30, "A3.3039",
                                        ifelse(exdata1$AGE>=20, "A4.2029",
                                               "A5.0019"))))
ifelse(exdata1$AGE <=18, "A",
       ifelse(exdata1$AGE <=40, "B",
              ifelse(exdata1$AGE <=60, "C", "D")))

exdata1 %>% select(ID, AGE, AREA)
exdata1 %>% filter((AREA == "서울" | AREA == "경기") 
                   & (Y17_CNT >=10 & Y17_CNT <=30) 
                   & Y16_cnt >=30) 


exdata1 %>% select(-AREA, -Y17_CNT)
exdata1 %>% select(-AREA)








