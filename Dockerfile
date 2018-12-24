FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

MAINTAINER Jishnu <jishnu.ray.c@gmail.com>

# Install some basic utilities
RUN apt-get update && apt-get install -y \
    python-dev \
    python-pip \
 && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/requirements.txt
RUN cd /tmp && pip install -r requirements.txt

WORKDIR /app
