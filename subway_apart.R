library(dplyr)
library(devtools)
library(ggmap)
library(readxl)
station_data <- read_excel("c:/rstudy/지하철2호선.xlsx")
googleAPIkey <- "AIzaSyBTKSuVLKs-TWlR6tbARUqueIfr5TX4ZTg"
register_google(googleAPIkey)
station_code <- as.character(station_data$역주소)
View(station_code)
station_code <- geocode(station_code)
head(station_code)
station_code_final <- cbind(station_data, station_code)
head(station_code_final)

apart_data <- read.csv("c:/rstudy/아파트.csv")
head(apart_data)
apart_data$전용면적 = round(apart_data$전용면적)
head(apart_data)
count(apart_data, 전용면적) %>% arrange(desc(n))
apart_85 <- subset(apart_data, 전용면적=="85")
head(apart_85)
apart_85$거래금액 <- gsub(",","", apart_85$거래금액)
apart_85_cost <- aggregate(as.integer(거래금액) ~ 단지명, apart_85, mean)
apart_85_cost <- rename(apart_85_cost, "거래금액" = "as.integer(거래금액)")
head(apart_85_cost)
apart_85 <- apart_85[!duplicated(apart_85$단지명),]
head(apart_85)
apart_85 <- left_join(apart_85, apart_85_cost, by="단지명")
head(apart_85)
apart_85 <- apart_85 %>% select("단지명", "시군구", "번지","전용면적","거래금액.y")
apart_85 <- rename(apart_85, "거래금액" = "거래금액.y")
head(apart_85)
apart_address <- paste(apart_85$시군구, apart_85$번지)
apart_address <- paste(apart_85$시군구, apart_85$번지) %>% data.frame()
head(apart_address)
apart_address <- rename(apart_address, "주소"=".")
apart_address_code <- as.character(apart_address$주소) %>% enc2utf8() %>% geocode()
apart_final <- cbind(apart_85, apart_address, apart_address_code) %>% select("단지명","전용면적","거래금액","주소", lon, lat)
head(apart_final)

mapo_map <- get_googlemap("mapogu", maptype = "roadmap", zoom = 12)
ggmap(mapo_map)
library(ggplot2)
ggmap(mapo_map) + geom_point(data=station_code_final, aes(x=lon, y=lat),
                             colour = "red", size = 3) +
  geom_text(data = station_code_final, aes(label = 역명, vjust = -1))
hongdae_map <- get_googlemap("hongdae station", maptype = "roadmap", zoom = 15)
ggmap(hongdae_map) +
  geom_point(data = station_code_final, aes(x = lon, y = lat), colour = "red",
             size = 3) +
  geom_text(data = station_code_final, aes(label = 역명, vjust = -1)) +
  geom_point(data = apart_final, aes(x= lon, y = lat)) +
  geom_text(data = apart_final, aes(label = 단지명, vjust = -1), colour = "blue") +
  geom_text(data = apart_final, aes(label = 거래금액, vjust = 1), colour = "purple", size = 5)

