library(lmtest)
data2012 <- read.csv("2012_nba_draft_combine.csv")
data2013 <- read.csv("2013_nba_draft_combine.csv")
data2014 <- read.csv("2014_nba_draft_combine.csv")

variable <- c(rep('Vertical (Max Reach) 2012',59), rep('Vertical (Max Reach) 2013', 59), rep('Vertical (Max Reach) 2014', 59))
wear <- c(data2012$Vertical..Max.Reach., data2013$Vertical..Max.Reach., data2014$Vertical..Max.Reach.)

# variable <- c(rep('Vertical (Max)',59), rep('Vertical (No Step Reach)', 59))
# wear <- c(data$Vertical..Max., data$Vertical..No.Step.Reach.)

df <- data.frame(variable, wear)

boxplot(wear~variable, data=df)
variable.anova <- aov(wear~variable, data=df)
summary(variable.anova)

residuals <- variable.anova$residuals
# plot(variable.anova$residuals)

scaled_residuals <- scale(variable.anova$residuals)
plot(scaled_residuals)

qqnorm(residuals)
qqline(residuals,col="steelblue",lwd=2)

hist(residuals)

shapiro.test(residuals)

dwtest(variable.anova)

bartlett.test(residuals,df$variable)