#!/bin/bash

#SBATCH --account=foy
#SBATCH --job-name=experiment
#SBATCH --partition=ckpt
#SBATCH --gpus-per-node=2080ti:1
#SBATCH --mem=80G
#SBATCH --time=8:00:00
#SBATCH -o log/%x_%j.out

python main.py
