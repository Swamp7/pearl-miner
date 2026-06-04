# pearl-miner

Dockerized [alpha](https://pearl.alphapool.tech/) miner for Pearl (PRL) on
NVIDIA tensor-core GPUs (Volta → Blackwell, including Hopper).

Image: [`swamp7/pearl-miner`](https://hub.docker.com/r/swamp7/pearl-miner)

## Tags

| Tag | alpha version | Notes |
|---|---|---|
| `swamp7/pearl-miner:latest` | 1.7.6 | rolls forward with each release |
| `swamp7/pearl-miner:1.7.6-beta` | 1.7.6 | tarball release |
| `swamp7/pearl-miner:1.7.4-beta` | 1.7.4 | tarball release |
| `swamp7/pearl-miner:1.7.3-beta` | 1.7.3 | tarball release |
| `swamp7/pearl-miner:1.7.2` | 1.7.2 | first tarball release |
| `swamp7/pearl-miner:1.5` | 1.5 | original single-binary build |

Pin to an exact version tag in production; the `:latest` tag follows the
newest release (currently 1.7.6-beta).

## Usage

```bash
docker run --gpus all swamp7/pearl-miner:1.7.6-beta \
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
- v1.7.2+ ships as a tarball at `/downloads/alpha-VX.Y.Z.YYYYMMDD.tar.gz` and
  the binary inside is renamed from `alpha-miner` to `alpha`. CLI flags are
  unchanged so the `docker run` arguments are identical across all versions.
