data <- read.csv("./2015_nba_draft_combine.csv")
attach(data)
col <- na.omit(Sprint)
mean <- mean(col)
mean