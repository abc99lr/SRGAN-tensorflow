#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python main.py \
    --output_dir /home/ruilan2/scratch/MPR0Result/test_new_data/ \
    --summary_dir /home/ruilan2/scratch/MPR0Result/test_new_data/log/ \
    --mode test \
    --is_training False \
    --task SRGAN \
    --batch_size 16 \
    --input_dir_LR /home/ruilan2/scratch/MPR0/MPR0_LR_test_small/ \
    --input_dir_HR /home/ruilan2/scratch/MPR0/MPR0_HR_test_small/ \
    --num_resblock 16 \
    --perceptual_mode MSE \
    --pre_trained_model True \
    --checkpoint /home/ruilan2/scratch/MPR0Result/experiment_SRGAN_MSE_1/model-100000

