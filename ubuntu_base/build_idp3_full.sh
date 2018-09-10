#!/bin/bash
wget --quiet https://repo.anaconda.com/miniconda/Miniconda2-4.5.4-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /home/ubuntu/conda && \
    rm ~/miniconda.sh && \
    sudo ln -s /home/ubuntu/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
    echo ". /home/ubuntu/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \

. /home/ubuntu/conda/etc/profile.d/conda.sh
conda config --add channels intel \
    && export ACCEPT_INTEL_PYTHON_EULA=yes \
    && conda create -n idp intelpython3_full=2018.0.3 python=3 -y -q \
    && conda clean --all -y \
    && echo "conda activate idp" >> ~/.bashrc \
    && sudo apt-get update -qqq \
    && sudo apt-get install -y -q g++ \
    && sudo apt-get autoremove
