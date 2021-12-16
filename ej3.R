data2 <- read.csv("Advertising.csv")
# print(data2)
data2$X <-NULL
# data2 <- data.frame(mes,)
# data2 <- scale(data)
# data2 <- data.frame(data)

# data2$X <-TV*radio*newspaper
cor(data2)

attach(data2)
multi.fit = lm(sales~TV+radio, data = data2)
summary(multi.fit)

mean(multi.fit$residuals)
sum(multi.fit$residuals)

# qqplot(multi.fit$residuals,)
# hist(multi.fit$residuals)

ks.test(multi.fit$residuals, pnorm, mean(multi.fit$residuals), sd(multi.fit$residuals))
# shapiro.test(multi.fit$residuals)

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
plot(sales, res, 
main = "Residuales contra sales",
xlab = "sales", ylab="Residuos")
abline(h=0, lty=2)
hist(res, main = "Histograma de residuos")

qqnorm(res)
qqline(res)