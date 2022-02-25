#!/bin/bash
#$ -M xdong2ps@gmail.com
#$ -m abe
#$ -q gpu@qa-p100-001
#$ -pe smp 1
#$ -l gpu=2

source /afs/crc.nd.edu/user/w/wyu1/anaconda3/bin/activate torch

CUDA_VISIBLE_DEVICES=0 /afs/crc.nd.edu/user/w/wyu1/anaconda3/envs/torch/bin/python run.py -c config/global_config.yaml train\
