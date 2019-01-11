FROM ubuntu:18.04

USER root

RUN apt-get update
RUN apt-get install -y sudo && \
    apt-get install -y apt-utils

RUN sudo apt-get update && sudo apt-get upgrade -y


WORKDIR /root

# install exercism
ARG EXERCISM_TOKEN
RUN sudo apt-get install -y wget
RUN mkdir exercism && \
    cd exercism && \
    wget https://github.com/exercism/cli/releases/download/v3.0.11/exercism-linux-64bit.tgz && \
    tar -xf exercism-linux-64bit.tgz
RUN sudo cp /root/exercism/exercism /usr/local/bin

RUN exercism configure --token=$EXERCISM_TOKEN --workspace /work

RUN sudo apt-get install -y vim  

