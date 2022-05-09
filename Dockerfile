FROM python:3.6.13-slim

RUN apt-get update 
RUN apt-get install -y apt-utils 
RUN apt-get install -y libjpeg-dev zlib1g-dev

RUN pip install 'tensorflow>=1.13,<2'  -i https://mirrors.aliyun.com/pypi/simple
RUN pip install 'matplotlib>=3.0.3'  -i https://mirrors.aliyun.com/pypi/simple
RUN pip install 'numpy>=1.16.2'  -i https://mirrors.aliyun.com/pypi/simple
