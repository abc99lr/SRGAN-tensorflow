#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python main.py \
    --output_dir ./result/srgan-vgg54-80000/ \
    --summary_dir ./result/srgan-vgg54-80000/log/ \
    --mode test \
    --is_training False \
    --task SRGAN \
    --batch_size 16 \
    --input_dir_LR ./data/test_LR/ \
    --input_dir_HR ./data/test_HR/ \
    --num_resblock 16 \
    --perceptual_mode VGG54 \
    --pre_trained_model True \
    --checkpoint /home/ruilan2/scrach/srganResult/experiment_SRGAN_VGG54/model-80000

