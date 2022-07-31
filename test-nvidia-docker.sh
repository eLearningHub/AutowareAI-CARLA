#!/bin/bash

# docker run --gpus all nvidia/cuda:10.0-base nvidia-smi
# docker run --rm --gpus all nvidia/cuda:11.0.3-base-ubuntu20.04 nvidia-smi
docker run --rm --gpus all ubuntu nvidia-smi
