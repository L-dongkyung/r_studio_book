x<-10
y<-30
ex_vector1<- c(-1, 0, 1)
ex_vector2 <- seq(-5,6)
ex_vector2 <- c('hello', 'hi')
ex_vector3 <- c("69", "kia")
exvector4 <- c(-5, -4, -3, -2, -1, 0)
exvector5 <- seq(0, 5)
ex_vector4 <- c(TRUE, FALSE, TRUE, TRUE)
str(ex_vector4)
length(ex_vector4)
rm(y)
rm(exvector4, exvector5)
str(ex_vector1)
x <- c(1,2,3,4,5,6)
x_mat<-matrix(x, nrow=2, ncol = 3, byrow = T)
rm(x_array)
y <- c(1,2,3,4,5,6,7,8,9)
array(y, dim = c(2,2,2))
array(y, dim = c(2,3,2))
array(y, dim = c(3,2,2))
array(y, dim = c(2,2,3))
list1<-list(c(1,2,3),"hello")
list2<-list(1,2,3,4,5,"hello")
list2
list1
str(list1)
str(list2)
list3<- list(seq(1,3),'hi')
str(list3)

id<- c(1,2,3,4,5,6,7,8,9,10)
sex<- c('F','M','F','M','M','F','F','F','M','f')
AGE<- c(50,40,28,50,27,23,56,47,20,38)
area <- c('서울','경기','제주','서울','서울','서울','경기','서울','인천','경기')
dataframeex<-data.frame(id,sex,AGE,area)
dataframeex
str(dataframeex)
a <- seq(1,5)
