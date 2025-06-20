#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=12:00:00
#SBATCH --mem=32GB
#SBATCH --job-name=naepplots
#SBATCH --mail-type=ALL
#SBATCH --mail-user=email-address@nyu.edu

module purge
module load r/gcc/4.5.0
module load python/intel/3.8.6

Rscript your-script.R
python ~/notify_slack.py 'Dear Mr. President, there are too many states nowadays. Please eliminate three. P.S. I am not a crackpot.'