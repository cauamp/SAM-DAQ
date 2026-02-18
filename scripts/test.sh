# CUDA_VISIBLE_DEVICES=0 torchrun ./test.py \
#     --data_prefix /home/linj/workspace/vsod/datasets \
#     --sam2_config ./models/sam2/sam2_hiera_l.yaml \
#     --sam2_ckpt ./weights/sam2.1_hiera_large.pt \
#     --load ./exps/RDVs_0322_140302/latest.pt \
#     --task RDVS --num_frame_queries=30 --num_video_queries=8 --enable_memory

# CUDA_VISIBLE_DEVICES=0 torchrun ./test.py \
#     --data_prefix /home/linj/workspace/vsod/datasets \
#     --sam2_ckpt ./weights/sam2.1_hiera_large.pt \
#     --sam2_ckpt ./weights/sam2.1_hiera_large.pt \
#     --load ./exps/ViDSOD_0323_140914/latest.pt \
#     --task ViDSOD-100 --num_frame_queries=30 --num_video_queries=8 --enable_memory

uv run torchrun ./test.py \
    --data_prefix /home/linj/workspace/vsod/datasets \
    --sam2_config ./models/sam2/sam2_hiera_l.yaml \
    --sam2_ckpt ./weights/sam2.1_hiera_large.pt \
    --load ./weights/dvisal.pt \
    --task DViSal --num_frame_queries=30 --num_video_queries=8 --enable_memory
