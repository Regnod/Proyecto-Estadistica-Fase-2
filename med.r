data <- read.csv("2014_nba_draft_combine.csv")

attach(data)

print(data$Vertical..Max.)

m <- mean(data$Vertical..Max.)

print(m)