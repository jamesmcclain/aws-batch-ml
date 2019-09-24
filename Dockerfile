FROM pytorch/pytorch:nightly-runtime-cuda10.0-cudnn7

RUN conda install -c pytorch -c fastai fastai && \
    conda clean -a
RUN pip install awscli boto3 torchvision jupyterlab rasterio sklearn tabulate pyitlib --upgrade && \
    rm -rf /root/.cache/pip
RUN apt-get update && apt-get install -y gdal-bin libgdal-dev && \
    apt-get autoremove && apt-get autoclean

COPY ./download_run.sh /workspace/download_run.sh
COPY ./download_run_upload_jupyter.sh /workspace/download_run_upload_jupyter.sh
