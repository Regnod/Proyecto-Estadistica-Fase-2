data <- read.csv("./2013_nba_draft_combine.csv")
attach(data)
col <- na.omit(Vertical..No.Step.Reach.)
mean <- mean(col)
mean