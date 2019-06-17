#!/usr/bin/env bash

export CUDA_VERSION=10.0

export PATH=/usr/local/cuda-${CUDA_VERSION}/bin:/usr/local/cuda-${CUDA_VERSION}/NsightCompute-2019.1${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-${CUDA_VERSION}/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

