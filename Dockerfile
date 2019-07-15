FROM pytorch/pytorch:nightly-runtime-cuda10.0-cudnn7

RUN conda install -c pytorch -c fastai fastai
RUN pip install awscli boto3 torchvision jupyterlab --upgrade

COPY ./download_run_upload.sh /workspace/download_run_upload.sh
COPY ./download_run_upload_jupyter.sh /workspace/download_run_upload_jupyter.sh
