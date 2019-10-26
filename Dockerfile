FROM debian:buster

RUN apt-get update -y && \
    apt-get install -y curl xz-utils && \
    rm -rf /var/apt/lists/* && \
    curl https://wasmtime.dev/install.sh -sSf | bash && \
    apt-get remove --purge
