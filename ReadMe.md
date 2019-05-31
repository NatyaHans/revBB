# Project Pipeline
# All the scripts are in folder 0_scripts

# Question1: For a fixed tree topology, can we estimate speciation and extinction rates? 
## Approach:
    - Simulate birth death trees ( script simtreebd.R in R) 
                  - Folder Name: 1_data_simtreebd
                  - dependencies simulate.NotNullTree.R
                  - Fixed taxa size 50,
                  - output simulated trees =1000 (in nexus format)
                  - data saved in folder 1_data_simtreebd

    - These fixed trees are then used for estimating lambda and mu by using RevBayes script
                  


- 
# Simulate alignments using RevBayes
    - Folder Name: 2_seqdata_simseqbd
    - dependencies seq_sim.Rev
    - simulated under relaxed clock model (lognormal) and JC substitution model

# Part 1 : 
  # Branch 1
    - Treat trees as fixed
    - Run through RevBayes using bd-tree-analysis.Rev
    - Extract diverification parameters

  # Branch 2
    - Treat sequences as fixed
    - Run through RevBayes using mcmc_BDS.Rev (joint estimation of tree & params)
    - Extract diversification parameters by using a mean point estimation
    - Build lambda/mu distribution histograms
    - Compare where Branch 1's parameters lie on the histograms?

# Part 2
