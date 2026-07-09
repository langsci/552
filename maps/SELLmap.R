install.packages("lingtypology", dependencies = TRUE)
library(lingtypology)

map <- read.csv('C:/Users/joeyl/Dropbox/ChadicDIR/buy-sellmap.csv')
map$lang <- lang.gltc(map$Glottocode)
map.feature(tile = "CartoDB.Positron",
            legend.position = "topleft",
  languages = map$lang,
  minichart.data = map[, c("No.distinction", "SELL.verb", "SELL.from.syntax", "SELL.from.morphology", "BUY.from.morphology")],
  minichart = "pie",
  width = 1.5,
  minimap = TRUE)
