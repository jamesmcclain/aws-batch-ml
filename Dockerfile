FROM pytorch/pytorch:nightly-runtime-cuda10.0-cudnn7

RUN pip install awscli boto3 torchvision --upgrade
ADD https://download.pytorch.org/models/resnet101-5d3b4d8f.pth /root/.cache/torch/checkpoints/resnet101-5d3b4d8f.pth
ADD https://download.pytorch.org/models/deeplabv3_resnet101_coco-586e9e4e.pth /root/.cache/torch/checkpoints/deeplabv3_resnet101_coco-586e9e4e.pth

COPY ./download_run_upload.sh /workspace/download_run_upload.sh
