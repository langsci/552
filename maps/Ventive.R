install.packages("lingtypology", dependencies = TRUE)
library(lingtypology)
library(dplyr)
install.packages(ggplot2)
library(ggplot2)
install.packages("viridis")
library(viridis)

dflang <- read.csv("C:\\Users\\joeyl\\Dropbox\\ChadicDIR\\languages.csv")
dffunc <- read.csv("C:\\Users\\joeyl\\Dropbox\\ChadicDIR\\functions.csv")

ventive <- ifelse(dffunc$Function == "DIR" & dffunc$Path == "VENT", dffunc$Glottocode, "")
ventive <- unique(ventive)
ventive <- ventive[-1]

dflang <- dflang %>% mutate(VENTIVE = ifelse(dflang$Glottocode %in% ventive, "Yes", "No"))

map.feature(languages = lang.gltc(dflang$Glottocode),
            stroke.features = dflang$Branch,
            features = dflang$VENTIVE,
            width = 2,
            stroke.radius = 5,
            title = "Ventive",
            stroke.title = "Branch",
            tile = "CartoDB.Positron",
            legend.position = "topleft",
            stroke.legend.position = "topleft",
            color = c("white","red"),
            stroke.color = c("gold","green","blue","lightblue"),
            minimap = TRUE)


  
            