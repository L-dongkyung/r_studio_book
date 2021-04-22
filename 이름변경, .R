mid_exam = read_excel("c:/rstudy/mid_exam.xlsx")
final_exam = read_excel("final_exam.xlsx")
mid_exam=rename(mid_exam, MATH_MID=MATH, ENG_MID=ENG)
final_exam = rename(final_exam, MATH_FINAL=MATH, ENG_FINAL=ENG)

total_exam <- inner_join(mid_exam, final_exam, by="ID")
total_exam$MATH_AVG = (total_exam$MATH_MID + total_exam$MATH_FINAL)/2
total_exam$ENG_AVG = (total_exam$ENG_MID + total_exam$ENG_FINAL)/2
View(total_exam)

total_exam$TOTAL_AVG <- (total_exam$MATH_AVG + total_exam$ENG_AVG)/2

mean(total_exam$MATH_AVG)
mean(total_exam$ENG_AVG)

filter(total_exam, total_exam$MATH_MID >=80 & total_exam$ENG_MID >=90)
total_exam %>% filter(MATH_MID >= 80 & ENG_MID >= 90)
