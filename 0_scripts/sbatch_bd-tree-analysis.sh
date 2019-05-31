#!/bin/sh
#SBATCH --job-name=bdtreeanalysis #Job name
#SBATCH --mail-type=FAIL # Mail events (NONE, BEGIN, END, FAIL, FAIL)
#SBATCH --mail-user=nhans@ufl.edu # Where to send mail
#SBATCH --cpus-per-task=4 # Number of cores: Can also use -c=4
#SBATCH --mem-per-cpu=1gb # Per processor memory
#SBATCH -t 24:00:00     # Walltime
#SBATCH -o bdtreeanalysis.%j.out # Name output file
#SBATCH
#SBATCH --account=burleigh
#SBATCH --qos=burleigh-b

pwd; hostname; date


# change the location here

module load cuda/9.2.88
module load intel/2018.1.163
module load openmpi/3.1.2  
module load revbayes/1.0.11
# change the script name and path
rb 0_scripts/bd-tree-analysis.Rev

# nhans@ufl.edu

