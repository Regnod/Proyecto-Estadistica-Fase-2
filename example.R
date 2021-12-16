ganancias <- c(1.2, 1.5, 2, 3.5, 4.1, 5.6)
mes <-        c(   1,    2,    3,   4,    5,    6)
vendedores <- c(  24,   25,   25,  28,   27,   29)
precio <-     c(0.95, 0.93, 0.92, 0.9, 0.87, 0.86)

# data2 <- data.frame(mes,)
data2 <- data.frame(mes, ganancias, vendedores, precio, X)
data2 <- scale(data2)
data2 <- data.frame(data2)
data2$X <-mes*vendedores*precio
cor(data2)

attach(data2)
multi.fit = lm(ganancias~mes, data = data2)
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
plot(ganancias, res, 
main = "Residuales contra ganancias",
xlab = "ganancias", ylab="Residuos")
abline(h=0, lty=2)
hist(res, main = "Histograma de residuos")

qqnorm(res)
qqline(res)