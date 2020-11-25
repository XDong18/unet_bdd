export CUDA_VISIBLE_DEVICES=4,5,6,7
python3 segment.py train -e -d /shared/xudongliu/bdd100k/seg/seg -c 19 -s 768 --arch dla102up \
    --batch-size 8 --lr 0.01 --momentum 0.9 --lr-mode poly \
    --epochs 500 --random-scale 2 --random-rotate 0 \
    --random-color --pretrained-base imagenet -o out/unet_500e resume out/unet_500e/model_best.pth.tar