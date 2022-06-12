# FROM nvidia/cuda:11.0.3-base-ubuntu20.04
FROM tensorflow/tensorflow:1.12.0-gpu-py3
COPY ./requirements.txt /tmp
RUN pip3 install --upgrade pip && pip3 install -r /tmp/requirements.txt
# RUN apt-get install ffmpeg libsm6 libxext6  -y
# RUN apt update
# RUN  apt install ffmpeg libsm6 libxext6  -y
# RUN apt-get update && apt-get install -y python3-pip
RUN rm -rf ./tmp
WORKDIR /app
COPY . .
ENTRYPOINT [ "bash" ]