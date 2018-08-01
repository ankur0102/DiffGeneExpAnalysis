library(Biobase)
library(genefilter)
library(affy)

load("~/Desktop/Bio Project/chang03.rda")
cat(abstract(experimentData(chang03)))

dim(exprs(chang03))     #Checking the dimensions
exprs(chang03)
dim(pData(chang03))
pData((chang03))
names(pData(chang03))
pData(chang03)$disease.state
table(pData(chang03)$disease.state)
table(pData(chang03)$disease.state,pData(chang03)$Progest)
boxplot(exprs(chang03))
y<-log2(exprs(chang03))
boxplot(y,col=as.numeric(pData(chang03)$disease.state)+1)

#MA Plot
Index<-as.numeric(pData(chang03)$disease.state)
d<-rowMeans(y[,Index==2])-rowMeans(y[,Index==1])
a<-rowMeans(y)
smoothScatter(a,d,main="MAplot",xlab="A",ylab="M")
abline(h=c(-1,1),col="red")

#DifferentialExpressionAnalysis
g<-y[23,]
m<-mean(g[Index==1])-mean(g[Index==2])
plot(jitter(Index),g,col=Index+1,xaxt="n",xlab="Patient Type")
axis(1,labels=c("RES","SENS"),at=1:2)

#DifferentialExpression
library(limma)
design<-model.matrix(~factor(chang03$disease.state))
fit<-lmFit(y,design)
ebayes<-eBayes(fit)
tab<-topTable(ebayes,coef=2,adjust="fdr",n=150)
labCol<-c("RES","SENS")[Index]
heatmap(y[rownames(tab),],labCol=labCol)

d[1862_at]
