library(lmtest)

data2014 <- read.csv("2014_nba_draft_combine_fixed.csv")

# data2012 <- read.csv("2012_nba_draft_combine_fixed.csv")
# data2013 <- read.csv("2013_nba_draft_combine_fixed.csv")
# data2015 <- read.csv("2015_nba_draft_combine_fixed.csv")


data2014$X <- NULL
data2014$Player <- NULL
data2014$Year <- NULL
data2014$Draft.pick <- NULL
data2014$Bench <- NULL


# analisis de componentes principales
acp <- prcomp(data2014, scale=TRUE)
summary(acp)
plot(acp)
biplot(acp)