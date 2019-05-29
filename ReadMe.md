# Project Pipeline
# All the scripts are in folder 0_scripts

# Simulate  bd trees using the script simtreebd.R in R 
#  Folder Name: 1_data_simtreebd
 
    -dependencies simulate.NotNullTree.R
    -taxa size 50, simulated trees =1000 (in nexus format)
    -data saved in folder data_simtreebd

# Simulate alignments using RevBayes  - Folder Name
# Folder Name: 2_seqdata_simseqbd

    - dependencies seq_sim.Rev 
    - simulated under relaxed clock model (lognormal) and JC substitution model 
