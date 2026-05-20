# pearl-miner

Dockerized [alpha-miner](https://pearl.alphapool.tech/) for mining Pearl (PRL) on
NVIDIA tensor-core GPUs (Volta → Blackwell, including Hopper).

Image: [`swamp7/pearl-miner`](https://hub.docker.com/r/swamp7/pearl-miner)

## Usage

```bash
docker run --gpus all swamp7/pearl-miner \
    --pool stratum+tcp://us2.alphapool.tech:5566 \
    --address prl1pYOUR_PRL_ADDRESS \
    --worker rig01
```

Pool endpoints:

- US: `us2.alphapool.tech:5566` (pooled) / `:5567` (solo)
- EU: `eu1.alphapool.tech:5566` / `:5567`
- Asia: `sg1.alphapool.tech:5566` / `:5567`
