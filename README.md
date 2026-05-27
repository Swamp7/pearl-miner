# pearl-miner

Dockerized [alpha](https://pearl.alphapool.tech/) miner for Pearl (PRL) on
NVIDIA tensor-core GPUs (Volta → Blackwell, including Hopper).

Images on Docker Hub:

- [`swamp7/pearl-miner`](https://hub.docker.com/r/swamp7/pearl-miner) — original (alpha-miner v1.5, single binary)
- [`swamp7/pearl-miner-1.7.2`](https://hub.docker.com/r/swamp7/pearl-miner-1.7.2) — stable (alpha v1.7.2, tarball release)
- [`swamp7/pearl-miner-1.7.3-beta`](https://hub.docker.com/r/swamp7/pearl-miner-1.7.3-beta) — beta (alpha v1.7.3, tarball release)

## Usage

```bash
docker run --gpus all swamp7/pearl-miner-1.7.2 \
    --pool stratum+tcp://us2.alphapool.tech:5566 \
    --address prl1pYOUR_PRL_ADDRESS \
    --worker rig01
```

Pool endpoints:

- US: `us2.alphapool.tech:5566` (pooled) / `:5567` (solo)
- EU: `eu1.alphapool.tech:5566` / `:5567`
- Asia: `sg1.alphapool.tech:5566` / `:5567`

## Version notes

- v1.5 used a single binary at `/downloads/alpha-miner` (rolling URL).
- v1.7.2 ships as a tarball at `/downloads/alpha-V1.7.2.20260526.tar.gz` and
  the binary inside is renamed from `alpha-miner` to `alpha`. CLI flags are
  unchanged so the `docker run` arguments are identical.
