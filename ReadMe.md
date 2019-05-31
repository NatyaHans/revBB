# Project Pipeline
# All the scripts are in folder 0_scripts

# Part 1 :
# Question: Can we accurately estimate diversification parameters from independently fixing the tree and fixing the sequences?
# Approach:
  - Simulate birth death trees ( script simtreebd.R in R) under a birth-death model
      - Folder Name: 1_data_simtreebd
      - dependencies simulate.NotNullTree.R
      - Fixed taxa size 50,
      - output simulated trees =1000 (in nexus format)
      - data saved in folder 1_data_simtreebd

  - Simulate sequences ( script seq_sim.Rev ) along the simulated trees, under a relaxed clock model (lognormal distribution) and JC model
      - Folder Name: 2_seqdata_simseqbd
      - dependencies seq_sim.Rev

  - Simulate birth death shift trees  (script bdshifttree.R in R) under a birth-death-shift model
      - Folder Name:
      - No dependencies
      - Outputs the nexus trees as list (since Revbayes can take that output)

## Branch 1
  - Treat trees as fixed
  - Run through RevBayes using bd-tree-analysis.Rev
  - Extract diversification parameters
## Branch 2
  - Treat sequences as fixed
  - Run through RevBayes using mcmc_BDS.Rev (joint estimation of tree & params)
  - Extract diversification parameters by using a mean point estimation
  - Build lambda/mu distribution histograms
  - Compare where Branch 1engths parameters lie on the histograms?

 - These fixed trees are then used for estimating lambda and mu by using RevBayes script
                  


 
=======

# Part 2: Comparing Stepping Stone(SS)  and Cross-validation (CV) for joint (Q,Tree prior,clock) model selection
    - Use alignment as data, holding out a test set (25% of sites) for CV approach
    - Run through RevBayes using mcmc_BDS.Rev (joint estimation of tree & params)

## Branch 1
    - Compute model marginals via SS and compute BFs
    - rank (Q,Tree prior,clock) models w.r.t BFs
## Branch 2
    - Use model parameters from mcmc_BDS.Rev to compute lnLikelihood on held out (test) data
    - rank (Q,Tree prior,clock`) models w.r.t lnLikelihood on held out (test) data
