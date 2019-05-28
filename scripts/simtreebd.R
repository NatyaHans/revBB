library(ape)
library(diversitree)
source("simulate.NotNullTree.R")
pars<-c(0.1,0.01)
taxa<-50
sim<-100
for(i in 1:sim){
temp<-simulate.NotNullTree(pars,tree.bd,maxtaxa=taxa,extinct=FALSE)
#temp<-tree.bd(pars, max.taxa=Inf, max.t=taxa, include.extinct=FALSE)
write.nexus(temp,file = paste("simtreebd",i,sep="_"))
}
