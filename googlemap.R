install.packages("devtools")
library(devtools)
install_github("dkahle/ggmap")
library(ggmap)
googleAPIkey = "AIzaSyBTKSuVLKs-TWlR6tbARUqueIfr5TX4ZTg"
register_google(googleAPIkey)
gg_seoul <- get_googlemap("seoul", maptype = "terrain")
ggmap(gg_seoul)
