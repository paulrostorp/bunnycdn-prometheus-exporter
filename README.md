# BunnyCDN Exporter for Prometheus

This is a simple server that scrapes BunnyCDN stats and exports them via HTTP for
Prometheus consumption.

forked from: https://github.com/permutive/bunnycdn_exporter
## Getting Started

To run it:

```bash
./bunnycdn_exporter [flags]
```

Help on flags:

```bash
./bunnycdn_exporter --help
```

## Usage

### Direct

```bash
bunnycdn_exporter --bunnycdn.api-key="<API_KEY>"
```

Or by using an environment variable for setting the API key:

```bash
export BUNNYCDN_API_KEY="<API_KEY>"
bunnycdn_exporter"
```

### Docker

To run the bunnycdn exporter as a Docker container, run:

```bash
docker run -p 9584:9584 ghcr.io/paulrostorp/bunnycdn-prometheus-exporter --bunnycdn.api-key="<API_KEY>"
```

alternatively, the API key can be passed as an environment variable:
```bash
docker run -p 9584:9584 -e BUNNYCDN_API_KEY="<API_KEY>" ghcr.io/paulrostorp/bunnycdn-prometheus-exporter
```

[View all docker images](https://github.com/paulrostorp/bunnycdn-prometheus-exporter/pkgs/container/bunnycdn-prometheus-exporter)

## License

Apache License 2.0, see [LICENSE](https://github.com/prometheus/bunnycdn_exporter/blob/master/LICENSE).
