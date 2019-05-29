simulate.NotNullTree<-function(pars,nameOfFunction,maxtime=Inf,maxtaxa,extinct=FALSE){
  library(diversitree)
  init.pars<-pars
  nameOfFunction<-nameOfFunction
  max.time<-maxtime
  max.taxa<-maxtaxa
  extinct<-extinct
  repeat{
    temp.tree<-nameOfFunction(pars = init.pars,max.t =max.time,max.taxa= max.taxa,include.extinct=extinct) # here is the time step determined
    if(is.null(temp.tree)==FALSE) break
  }
  return(temp.tree)
}
