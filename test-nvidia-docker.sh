#!/bin/bash

# docker run --gpus all nvidia/cuda:10.0-base nvidia-smi
docker run -it --rm --gpus all ubuntu nvidia-smi
