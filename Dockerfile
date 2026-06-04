FROM nvidia/cuda:12.2.2-devel-ubuntu20.04

RUN rm -f /etc/apt/sources.list.d/cuda.list

RUN apt-get update \
    && apt-get -y install --no-install-recommends wget ca-certificates \
    && wget -O /tmp/alpha.tar.gz https://pearl.alphapool.tech/downloads/alpha-V1.7.6.20260530.tar.gz \
    && tar -xzf /tmp/alpha.tar.gz -C / \
    && rm /tmp/alpha.tar.gz \
    && chmod +x /alpha/alpha \
    && ln -sf libcuda.so.1 /lib/x86_64-linux-gnu/libcuda.so \
    && ln -sf libnvidia-ml.so.1 /lib/x86_64-linux-gnu/libnvidia-ml.so \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /alpha

ENTRYPOINT ["./alpha"]
