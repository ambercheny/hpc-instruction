# Hyak

### General instruction
##### UW Hyak documentation
https://hyak.uw.edu/docs/
##### Tutorials
https://www.youtube.com/watch?v=iYM7xpRhp8I
##### Our lab is using account name `foy`

### Useful commands
##### Interactive sessions
1. to get CPU node\
`salloc --account foy --partition cpu-g2 --time=4:00:00 --mem=80G`
2. to get GPU node\
`salloc --account foy --partition ckpt --gpus-per-node=2080ti:1 --time=8:00:00 --mem=80G`
    - eligible GPUs for `ckpt` partition: 2080ti, a40

##### Batch sessions
`sbatch examples/bash_example.sh`

##### Monitor jobs
1. monitor sessions
`watch squeue -u <username>`
2. check CPU availability
`nvidia-smi`


### Use Conda on HPC
[to be filled]

### Project-specific
##### PCP-MAE
1. train models from scratch\
`CUDA_VISIBLE_DEVICES=0 python main.py --config cfgs/pretrain/multitask_cbc.yaml --exp_name uw_ch1_train_cls_4096_32_64_ssc_3d --seed 0 --deterministic`
2. use trained models for inference\
`python main_vis.py --config cfgs/pretrain/multitask_cbc.yaml --exp_name uw_ch1_train_cls_4096_32_64_wbc --ckpts experiments/multitask_cbc/pretrain/uw_ch1_train_cls_4096_32_64_wbc/ckpt-last.pth --test`