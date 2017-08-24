# nvidia-prometheus-stats
Scrapes Memory and GPU utilization metrics using NVML and exposes them to Prometheus through a simple HTTP server and/or a push gateway.

Binaries are build with `pyinstaller`.

Detail Steps:

# Building up Prometheus Container:

Let us start with the first step. Run the below nvidia-docker command to bring up Prometheus UI:

```
$nvidia-docker run --name prometheus -d -p 94.130.33.61:9090:9090
 quay.io/prometheus/prometheus
f0ef97418f92f54c645678a7837270657f4b6577ce2dde3bf9cac6335b542665
```

Browse to 94.130.33.61:9090 to access Prometheus tool

# Building NVIDIA PROMETHEUS Statistics Docker Image

Run the below command on your Docker Host to build up the image:

```
$ git clone https://github.com/ajeetraina/nvidia-prometheus-stats
$ cd nvidia-prometheus-stats
$ docker build -t ajeetraina/nvidia-gpu-prom
```
