setwd("/Users/ksenia/Desktop/githubKA/revBB/4_seqInference")
i <- 8
file_name <- paste("seq_sim",i,".log",sep="")
log_file <- read.delim(file_name)
# speciation rates
lambda_1 <- log_file$speciation.1.
lambda_2 <- log_file$speciation.2.
lambda_3 <- log_file$speciation.3.
lambda_4 <- log_file$speciation.4.
# extinction rates
mu_1 <- log_file$extinction.1.
mu_2 <- log_file$extinction.2.
mu_3 <- log_file$extinction.3.
mu_4 <- log_file$extinction.4.
# event rate
nu <- log_file$event_rate


jpeg(paste("lambda/seqSim",i,"_lambda_1.jpg", sep=""))
hist(lambda_1, main = "Lambda_1 distribution")
jpeg(paste("lambda/seqSim",i,"_lambda_2.jpg", sep=""))
hist(lambda_2, main = "Lambda_2 distribution")
jpeg(paste("lambda/seqSim",i,"_lambda_3.jpg", sep=""))
hist(lambda_3, main = "Lambda_3 distribution")
jpeg(paste("lambda/seqSim",i,"_lambda_4.jpg", sep=""))
hist(lambda_4, main = "Lambda_4 distribution")


jpeg(paste("mu/seqSim",i,"_mu_1.jpg", sep=""))
hist(mu_1, main = "Mu_1 distribution")
jpeg(paste("mu/seqSim",i,"_mu_2.jpg", sep=""))
hist(mu_2, main = "Mu_2 distribution")
jpeg(paste("mu/seqSim",i,"_mu_3.jpg", sep=""))
hist(mu_3, main = "Mu_3 distribution")
jpeg(paste("mu/seqSim",i,"_mu_4.jpg", sep=""))
hist(mu_4, main = "Mu_4 distribution")


jpeg(paste("nu/seqSim",i,"_nu.jpg", sep=""))
hist(nu, main = "Nu distribution")

dev.off()
