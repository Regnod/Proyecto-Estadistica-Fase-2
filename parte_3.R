data <- read.csv("2014_nba_draft_combine_fixed.csv")
data$X <- NULL
data$Year <- NULL
data$Player <- NULL
data$Draft.pick <-NULL
data$Bench <- NULL
attach(data)
# plot(data)
tp <- cor(data)
tp
symnum(tp)
acp <- prcomp(data, scale=TRUE)
summary(acp)
# layout(matrix(c(1,1,2,2),2,2,byrow=T))
# plot(acp)
biplot(acp)
acp$rotation
data.std <- scale(data)
data.std <- data.frame(data.std)
#cluster jerarquico completo
d <- dist(data.std, method = "euclidean") # matriz de distancias con la distancia euclideana
fit <- hclust(d, method = "complete") # ajuste completo
d2 <- as.dendrogram(fit)

# plot(fit)

# dibuja rectangulos rojos alrededor de los 4 clusters
# rect.hclust(fit, k = 6, border = "red")

# cluster jerarquico average
fit.c <- hclust(d, method = "average") # ajuste segun las medias
d2.c <- as.dendrogram(fit.c) 

# plot(fit.c)

# drawdendogram with red borders around the 3 clusters
# rect.hclust(fit.c, k=6, border = "red")

# kmeans
fit.k1 <-kmeans(data, 6)
fit.k1
# library(factoextra)
# fviz_cluster(fit.k1, data = data.std)
# plot(data.std)
# plot(data.std, col = fit.k1$cluster, lwd=2)
# # arreglar los nombres estos
# plot(data$jobcat, data$educ, col = fit.k1$cluster, lwd = 2)
# points(fit.k1$centers, col=1:12, pch=6, lwd=2)