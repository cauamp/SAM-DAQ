#!/bin/bash
#SBATCH --time=00:50:00          # Time limit (HH:MM:SS) 
#SBATCH --output=run_%j/result.out   # Output file name 
#SBATCH --error=run_%j/log.err
#SBATCH --job-name=caua_dvsod-test   # Name of the job

#SBATCH --account=def-vislearn

#SBATCH --mem=128G                 # Request 128GB of memory
#SBATCH --cpus-per-task=16      # Request CPU core
#SBATCH --gpus-per-node=1         # Request GPU per node

module --force purge # Clear all loaded modules

# 1. Load the same modules you used to create the env
# module load python/3.11

# 2. Activate your virtual environment
./activate.sh
# source ~/miniconda3/etc/profile.d/conda.sh
# conda activate dvsod

# 3. Run your python script
./scripts/test.sh
