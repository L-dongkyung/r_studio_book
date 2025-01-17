View(mtcars)
nrow(mtcars)
str(mtcars)
library(dplyr)
head(arrange(mtcars, cyl))
head(arrange(mtcars, desc(cyl)))
head(select(mtcars, am, gear))
head(select(mtcars, mpg))
arrange(mtcars, cyl, desc(mpg))
mutate(mtcars, years = 1974)
mutate(mtcars, mpg_rang = rank(mpg))
arrange(mtcars, mpg)
distinct(mtcars, cyl)
distinct(mtcars, gear)
distinct(mtcars, cyl, gear)
summarise(mtcars, cyl_mean=mean(cyl), cyl_min=min(cyl), cyl_max=max(cyl))
summarise(mtcars, mean(cyl), min(cyl), max(cyl))
group_by(mtcars, cyl)
summarise(gr_cyl, n())
summarise(gr_cyl, n_distinct(gear))
sample_n(mtcars, 10)
sample_frac(mtcars, 0.1)
summarise(group_by(mtcars, cyl), n())
group_by(mtcars, cyl) %>% summarise(n())
arrange(mutate(mtcars, mpg_rank = rank(mpg)), mpg_rank)
mutate(mtcars, mpg_rank = rank(mpg)) %>% arrange(mpg_rank)
