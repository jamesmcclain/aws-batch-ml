FROM pytorch/pytorch:nightly-runtime-cuda10.0-cudnn7

RUN conda install -c pytorch -c fastai fastai && \
    conda clean -a
RUN pip install awscli boto3 torchvision jupyterlab rasterio sklearn tabulate pyitlib --upgrade && \
    rm -rf /root/.cache/pip

COPY ./download_run.sh /workspace/download_run.sh
COPY ./download_run_upload_jupyter.sh /workspace/download_run_upload_jupyter.sh
