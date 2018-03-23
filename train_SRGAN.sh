#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python main.py \
    --output_dir /home/ruilan2/scratch/MPR0Result/experiment_SRGAN_scale4/ \
    --summary_dir /home/ruilan2/scratch/MPR0Result/experiment_SRGAN_scale4/log/ \
    --mode train \
    --is_training True \
    --task SRGAN \
    --batch_size 16 \
    --flip False \
    --random_crop True \
    --crop_size 24 \
    --input_dir_LR /home/ruilan2/scratch/MPR0/MPR0_LR_train_scale4/ \
    --input_dir_HR /home/ruilan2/scratch/MPR0/MPR0_HR_train/ \
    --num_resblock 16 \
    --perceptual_mode MSE \
    --name_queue_capacity 4096 \
    --image_queue_capacity 4096 \
    --ratio 0.001 \
    --learning_rate 0.0001 \
    --decay_step 100000 \
    --decay_rate 0.1 \
    --stair True \
    --beta 0.9 \
    --max_iter 200000 \
    --queue_thread 10 \
    --vgg_scaling 0.0061 \
    --pre_trained_model False

