# Birth death shift trees
library(TreeSim)
lambda<-c(0.5,0.1) # ancestral and current speciation rate vector
mu<-c(0,0.01) # ancestral and current extinction rate vector
frac<-c(1,1) # only rate shifts (no mass extinction)
times<-c(0,0.3) # rate shift times
sim<-100 # number of trees
taxa<-50 # taxa 

#Note that taxa needs to be automated at some point.
# Simulating trees with a fixed number of species having shifts in rate
#
tree<-sim.rateshift.taxa(n=taxa,numbsim = sim,lambda = lambda,mu=mu,frac = frac, times = times, complete = FALSE)

write.nexus(tree,file = "simbdtreelist.nex")



