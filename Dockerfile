FROM nvidia/cuda:12.2.2-devel-ubuntu20.04

RUN rm -f /etc/apt/sources.list.d/cuda.list

RUN apt-get update \
    && apt-get -y install --no-install-recommends wget ca-certificates \
    && mkdir -p /alpha-miner \
    && wget -O /alpha-miner/alpha-miner https://pearl.alphapool.tech/downloads/alpha-miner \
    && chmod +x /alpha-miner/alpha-miner \
    && ln -sf libcuda.so.1 /lib/x86_64-linux-gnu/libcuda.so \
    && ln -sf libnvidia-ml.so.1 /lib/x86_64-linux-gnu/libnvidia-ml.so \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /alpha-miner

ENTRYPOINT ["./alpha-miner"]
