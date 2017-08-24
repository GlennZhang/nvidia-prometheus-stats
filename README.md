# nvidia-prometheus-stats

Want to scrape Memory & GPU utilization metrics using NVML & exposes them to Prometheus through a simple HTTP server and/or a push gateway- All in a Docker container???? Then you have come to the right place.

# Pre-requisite

- Install NVIDIA-DOCKER
- A System with GPGPU Card.

<h1>Detail Steps:</h1>

# Building up Prometheus Container:

Let us start with the first step. Run the below nvidia-docker command to bring up Prometheus UI:

```
$nvidia-docker run --name prometheus -d -p `hostname -i`:9090:9090
 quay.io/prometheus/prometheus
f0ef97418f92f54c645678a7837270657f4b6577ce2dde3bf9cac6335b542665
```

Browse to <hostname>:9090 to access Prometheus tool

# Building NVIDIA PROMETHEUS Statistics Docker Image

Run the below command on your Docker Host to build up the image:

```
$ git clone https://github.com/ajeetraina/nvidia-prometheus-stats
$ cd nvidia-prometheus-stats
$ docker build -t ajeetraina/nvidia-gpu-prom
```

Running the Metrics Container

```
$docker run --rm ajeetraina/prometheus-nvidia-hpc /nvidia-prometheus-stats/dist/nvidia-prometheus-stats/nvidia-prometheus-stats -g <prometheus-host>:9090 -p 8080
```
