data <- read.csv("./2014_nba_draft_combine.csv")
data$id <- NULL
data$Player <- NULL
data$Draft.pick <- NULL
data$Bench <- NULL
attach(data)