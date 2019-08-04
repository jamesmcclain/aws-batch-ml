FROM pytorch/pytorch:nightly-runtime-cuda10.0-cudnn7

RUN conda install -c pytorch -c fastai fastai
RUN pip install awscli boto3 torchvision jupyterlab rasterio sklearn tabulate --upgrade

COPY ./download_run.sh /workspace/download_run.sh
COPY ./download_run_upload_jupyter.sh /workspace/download_run_upload_jupyter.sh
