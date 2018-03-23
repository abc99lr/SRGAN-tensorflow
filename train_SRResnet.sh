#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python main.py \
    --output_dir /home/ruilan2/scratch/MPR0Result/experiment_SRResnet_scale4/ \
    --summary_dir /home/ruilan2/scratch/MPR0Result/experiment_SRResnet_scale4/log/ \
    --mode train \
    --is_training True \
    --task SRResnet \
    --batch_size 16 \
    --flip False \
    --random_crop True \
    --crop_size 24 \
    --input_dir_LR /home/ruilan2/scratch/MPR0/MPR0_LR_train/ \
    --input_dir_HR /home/ruilan2/scratch/MPR0/MPR0_HR_train/ \
    --num_resblock 16 \
    --name_queue_capacity 4096 \
    --image_queue_capacity 4096 \
    --perceptual_mode MSE \
    --queue_thread 4 \
    --ratio 0.001 \
    --learning_rate 0.0001 \
    --decay_step 400000 \
    --decay_rate 0.1 \
    --stair False \
    --beta 0.9 \
    --max_iter 100000 \
    --save_freq 20000

