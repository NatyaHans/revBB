# Project Pipeline
# All the scripts are in folder 0_scripts

# Simulate  bd trees using the script simtreebd.R in R
    - Folder Name: 1_data_simtreebd
    -dependencies simulate.NotNullTree.R
    -taxa size 50, simulated trees =1000 (in nexus format)
    -data saved in folder data_simtreebd

# Simulate alignments using RevBayes
    - Folder Name: 2_seqdata_simseqbd
    - dependencies seq_sim.Rev
    - simulated under relaxed clock model (lognormal) and JC substitution model

# Part 1
  # Branch 1
    - Treat trees as fixed
    - Run through RevBayes using bd-tree-analysis.Rev
    - Extract diversification parameters

  # Branch 2
    - Treat sequences as fixed
    - Run through RevBayes using mcmc_BDS.Rev (joint estimation of tree & params)
    - Extract diversification parameters by using a mean point estimation
    - Build lambda/mu distribution histograms
    - Compare where Branch 1's parameters lie on the histograms?

# Part 2
