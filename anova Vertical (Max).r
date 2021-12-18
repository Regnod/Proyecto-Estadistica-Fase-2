library(lmtest)
data2012 <- read.csv("2012_nba_draft_combine.csv")
data2013 <- read.csv("2013_nba_draft_combine.csv")
data2014 <- read.csv("2014_nba_draft_combine.csv")
data2015 <- read.csv("2015_nba_draft_combine.csv")


## found a Shaphiro test working using the original data deleting the uncomplete rows, using the fixed ones fails by a slight edge
variable <- c(rep('Vertical (Max) 2012',49), rep('Vertical (Max) 2014', 49), rep('Vertical (Max) 2015', 49))
wear <- c(data2012$Vertical..Max., data2014$Vertical..Max., data2015$Vertical..Max.)


df <- data.frame(variable, wear)

boxplot(wear~variable, data=df)
variable.anova <- aov(wear~variable, data=df)
summary(variable.anova)

residuals <- variable.anova$residuals

scaled_residuals <- scale(variable.anova$residuals)
plot(scaled_residuals)

qqnorm(residuals)
qqline(residuals,col="steelblue",lwd=2)

hist(residuals)

shapiro.test(residuals)

dwtest(variable.anova)

bartlett.test(residuals,df$variable)