data <- read.csv("./2014_nba_draft_combine.csv")
data$X <- NULL
data$Year <- NULL
data$Player <- NULL
data$Draft.pick <- NULL
data$Bench <- NULL
attach(data)

