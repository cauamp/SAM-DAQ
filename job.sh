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
# Prevent PyTorch from trying to load Level Zero (Intel GPU backend)
export TORCH_USE_RTLD_GLOBAL=1
export PYTORCH_IGNORE_LEVEL_ZERO=1

module load StdEnv/2023 gcc/12.3
#module load cuda/12.6
module load opencv/4.13.0

# 2. Activate your virtual environment
. ./activate.sh
#source ~/miniconda3/etc/profile.d/conda.sh
#conda activate torch222

# 3. Run your python script
./scripts/test.sh
