# Project Pipeline
# All the scripts are in folder 0_scripts

# Part 1 :
# Question: Can we accurately estimate diversification parameters from independently fixing the tree and fixing the sequences?
# Approach:
  - Simulate birth death trees ( script simtreebd.R in R) under a birth-death-shift model
      - Folder Name: 1_data_simtreebd
      - dependencies simulate.NotNullTree.R
      - Fixed taxa size 50,
      - output simulated trees =1000 (in nexus format)
      - data saved in folder 1_data_simtreebd
  - Simulate sequences ( script seq_sim.Rev ) along the simulated trees, under a relaxed clock model (lognormal distribution) and JC model
      - Folder Name: 2_seqdata_simseqbd
      - dependencies seq_sim.Rev
## Branch 1
  - Treat trees as fixed
  - Run through RevBayes using bd-tree-analysis.Rev
  - Extract diversification parameters
## Branch 2
  - Treat sequences as fixed
  - Run through RevBayes using mcmc_BDS.Rev (joint estimation of tree & params)
  - Extract diversification parameters by using a mean point estimation
  - Build lambda/mu distribution histograms
  - Compare where Branch 1's parameters lie on the histograms?

# Part 2:
# Question: ??
# Approach: ??
