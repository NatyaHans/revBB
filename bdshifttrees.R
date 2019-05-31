# Birth death shift trees
library(TreeSim)
lambda<-c(0.5,0.1) # ancestral and current speciation rate vector
mu<-c(0,0.01) # ancestral and current extinction rate vector
frac<-c(1,1) # only rate shifts (no mass extinction)
times<-c(0,0.3) # rate shift times
sim<-100
taxa<-50
# Simulating trees with a fixed number of species having shifts in rate
#
tree<-sim.rateshift.taxa(n=taxa,numbsim = sim,lambda = lambda,mu=mu,frac = frac, times = times, complete = FALSE)

write.nexus(tree,file = "simbdtreelist.nex")




# The fraction 0.6 of the extant species is included into the final tree
# (the tree has n species AFTER sampling, extinct and
# non-sampled lineages are not included):



sim.bd.taxa
sim.bd.age
sim.bd.taxa.age
sim.genespeciestree
sim.genetree
sim.gsa.taxa
sim.rateshift.taxa