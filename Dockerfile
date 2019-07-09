FROM pytorch/pytorch:1.0.1-cuda10.0-cudnn7-devel

RUN pip install awscli --upgrade
COPY ./download_run_upload.sh /workspace/download_run_upload.sh
