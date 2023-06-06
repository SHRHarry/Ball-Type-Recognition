python run_mvd_pretraining.py ^
        --data_path E:\Job\ASUS\AICUP\Public\train_test\train.csv ^
        --data_root E:\Job\ASUS\AICUP\Public\train_test ^
        --model pretrain_masked_video_student_small_patch16_224 ^
        --opt adamw --opt_betas 0.9 0.95 ^
        --log_dir ./OUTPUT/mvd_vit_small_with_vit_base_teacher_k400_epoch_400/20230523 ^
        --output_dir ./OUTPUT/mvd_vit_small_with_vit_base_teacher_k400_epoch_400/20230523 ^
        --image_teacher_model mae_teacher_vit_base_patch16 ^
        --distillation_target_dim 768 ^
        --distill_loss_func SmoothL1 ^
        --video_teacher_model pretrain_videomae_teacher_base_patch16_224 ^
        --video_distillation_target_dim 768 ^
        --video_distill_loss_func SmoothL1 ^
        --mask_type tube --mask_ratio 0.9 --decoder_depth 2 ^
        --batch_size 1 --update_freq 2 --save_ckpt_freq 10 ^
        --num_frames 16 --sampling_rate 4 ^
        --lr 1.5e-4 --min_lr 1e-4 --drop_path 0.1 --warmup_epochs 40 --epochs 401 ^
        --auto_resume
