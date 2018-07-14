#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python main.py \
    --output_dir ./result \
    --summary_dir ./result/log/ \
    --mode inference \
    --is_training False \
    --task SRGAN \
    --input_dir_LR /home/tianxiaozhang/Super-resolution-program/SuperResolution/super-resolution-data/test \
    --num_resblock 16 \
    --perceptual_mode MSE \
    --pre_trained_model True \
    --checkpoint ./experiment/model-20000