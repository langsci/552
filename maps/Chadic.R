#map of languages included in dataset
#export 750x420
#install.packages("lingtypology", dependencies = TRUE)
library("lingtypology")
df <- read.csv("C:\\Users\\joeyl\\Dropbox\\ChadicDIR\\allchadic.csv")
map.feature(languages = lang.gltc(df$Glottocode),
             stroke.features = df$Branch,
             features = df$Dataset,
             width = 2,
             stroke.radius = 5,
             title = "Sample",
             stroke.title = "Branch",
             tile = "CartoDB.Positron",
             legend.position = "topleft",
             stroke.legend.position = "topleft",
             stroke.color = c("gold","green","blue","lightblue"),
             color = c("red","white"),
             minimap = TRUE)
