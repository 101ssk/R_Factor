data1 <- read.csv(file="data.csv",row.names=1)
print(data1)

cor1 <- cor(data1)
print(cor1)

factanal1 <- factanal(x=data1,factors=3,rotation="varimax")
print(factanal1,cutoff=0)

par(mfrow=c(1,2))
barplot(factanal1$loadings[ ,1],main="factor1",ylim=c(0,1))
barplot(factanal1$loadings[ ,2],main="factor1",ylim=c(0,1))
