#!/bin/bash -l

#SBATCH --account=coexistence
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=124GB
#SBATCH --mail-type=ALL
#SBATCH --mail-user=nathan.wisnoski@uwyo.edu
#SBATCH --job-name=metacom

cd /gscratch/nwisnosk/GitHub/metacom-coexistence

module load gcc/7.3.0 r/3.6.1

R CMD BATCH --no-restore --no-save 1_mc_sim.R mc_sim.log
