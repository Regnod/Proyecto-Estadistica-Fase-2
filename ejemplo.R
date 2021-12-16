temperatura <- c(15, 16, 24, 13, 21, 16, 22, 18, 20, 16, 28, 27, 13, 22, 23)
humedad <- c(70, 65, 71, 64, 84, 86, 72, 84, 71, 75, 84, 79, 80, 76, 88)
recuento <- c(156, 157, 177, 145, 197, 184, 172, 187, 157, 169, 200, 193, 167, 170, 192)

data2 <- data.frame(temperatura, humedad, recuento)
cor(data2)
attach(data2)
multi.fit = lm(recuento~temperatura+humedad, data = data2)
summary(multi.fit)