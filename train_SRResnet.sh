#!/usr/bin/env bash
nohup python3 -u main.py \
    --output_dir /home/tianxiaozhang/Super-resolution-program/SuperResolution/SRGAN-tensorflow/experiment \
    --summary_dir /home/tianxiaozhang/Super-resolution-program/SuperResolution/SRGAN-tensorflow/experiment/log \
    --mode train \
    --is_training True \
    --task SRResnet \
    --batch_size 16 \
    --flip False \
    --random_crop True \
    --crop_size 24 \
    --input_dir_LR /home/tianxiaozhang/Super-resolution-program/SuperResolution/super-resolution-data/MPR0_LR_train/ \
    --input_dir_HR /home/tianxiaozhang/Super-resolution-program/SuperResolution/super-resolution-data/MPR0_HR_train/ \
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
    --save_freq 20000 &

