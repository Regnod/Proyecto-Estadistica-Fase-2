data <- read.csv("./2014_nba_draft_combine.csv")
data$X <- NULL
data$Year <- NULL
data$Player <- NULL
data$Draft.pick <-NULL
data$Bench <- NULL
# data <- data.frame(scale(data))
attach(data)
correlation_matrix <- cor(data)
correlation_matrix

# multi.fit = lm(data$Wingspan~data$Hand..Length.*data$Hand..Width., data = data)
multi.fit = lm(data$Vertical..Max.Reach.~data$Vertical..No.Step.Reach.+data$Vertical..Max.
, data = data)
summary(multi.fit)

mean(multi.fit$residuals)
sum(multi.fit$residuals)

# qqplot(multi.fit$residuals,)
# hist(multi.fit$residuals)

shapiro.test(multi.fit$residuals)

library(lmtest)

dwtest(multi.fit)

bptest(multi.fit)
res <- multi.fit$residuals

layout(matrix(c(1,2,3,4),2,2,byrow=T))
plot(multi.fit$fitted.values, rstandard(multi.fit), 
main = "Multi Fit Standarized residuals",
xlab = "Predictions",
ylab = "Standarized Resid",
ylim = c(-2.5, 2.5))
abline(h=0,lty=2)
plot(Vertical..Max.Reach., res, 
main = "Residuales contra Vertical (Max Reach)",
xlab = "Vertical (Max Reach)", ylab="Residuos")
abline(h=0, lty=2)
hist(res, main = "Histograma de residuos")

qqnorm(res)
qqline(res)
