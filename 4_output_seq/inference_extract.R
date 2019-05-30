setwd("/Users/ksenia/Desktop/githubKA/revBB/4_output_seq")
rate_dist_mat <- matrix(nrow=100,ncol=2)
colnames(rate_dist_mat) <- c("lambda","mu")
for (i in 1:100){
  file_name <- paste("seq_sim_",i,".log",sep="")
  log_file <- read.delim(file_name)
  lambda <- mean(log_file$speciation_rate)
  mu <- mean(log_file$extinction_rate)
  rate_dist_mat[i,1] <- lambda
  rate_dist_mat[i,2] <- mu
}
rate_dist_mat <- as.data.frame(rate_dist_mat)
hist(rate_dist_mat$lambda, main = "Lambda distribution")
hist(rate_dist_mat$mu, main = "Mu distribution")

