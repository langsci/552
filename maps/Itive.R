install.packages("lingtypology", dependencies = TRUE)
library(lingtypology)
library(dplyr)
install.packages(ggplot2)
library(ggplot2)
install.packages("viridis")
library(viridis)

dflang <- read.csv("C:\\Users\\joeyl\\Dropbox\\ChadicDIR\\languages.csv")
dffunc <- read.csv("C:\\Users\\joeyl\\Dropbox\\ChadicDIR\\functions.csv")

feature <- ifelse(dffunc$Function == "DIR" & dffunc$Path == "ITIVE", dffunc$Glottocode, "")
feature <- unique(feature)
feature <- feature[-1]

dflang <- dflang %>% mutate(ITIVE = ifelse(dflang$Glottocode %in% feature, "Yes", "No"))

map.feature(languages = lang.gltc(dflang$Glottocode),
            stroke.features = dflang$Branch,
            features = dflang$ITIVE,
            width = 2,
            stroke.radius = 5,
            title = "Itive",
            stroke.title = "Branch",
            tile = "CartoDB.Positron",
            legend.position = "topleft",
            stroke.legend.position = "topleft",
            color = c("white","red"),
            stroke.color = c("gold","green","blue","lightblue"),
            minimap = TRUE)