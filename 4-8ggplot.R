install.packages("ggplot2")
library(ggplot2)
ggplot(airquality, aes(x = Day, y = Temp)) + geom_point(size = 10, color = "violet")
str(airquality)
View(airquality)
ggplot(airquality, aes(x = Day, y = Temp)) + geom_line(size = 1, color = "violet") + geom_point(size = 3, color = "purple")
ggplot(airquality, aes(x = Day, y = Temp)) + geom_line(size = 1, color = "violet")
ggplot(mtcars, aes(x = cyl)) + geom_bar()
ggplot(mtcars, aes(x = factor(cyl))) + geom_bar(aes(fill = factor(gear))) + coord_polar(theta = "y")
ggplot(airquality, aes(x = Day, y = Temp, group = Day)) + geom_boxplot()
ggplot(airquality, aes(Temp)) + geom_histogram(bins = 100)
str(economics)
ggplot(economics, aes(x = date, y = psavert)) + geom_line() + geom_abline(intercept = 12.18671, slope = -0.0005444)
