install.packages("lingtypology", dependencies = TRUE)
library(lingtypology)

cammap <- read.csv('C:/Users/joeyl/Dropbox/ChadicDIR/cammap.csv')
cammap$lang <- lang.gltc(cammap$Glottocode)
map.feature(tile = "CartoDB.Positron",
  legend.position = "topleft",
  languages = cammap$lang,
  minichart.data = cammap[, c("VERB", "CAMVENT", "TAKE", "DIRV", "NONE")],
  minichart = "pie",
  width = 1.5,
  minimap = TRUE)
