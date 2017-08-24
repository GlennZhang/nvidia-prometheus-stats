
FROM ubuntu
RUN apt-get update -y && \
    apt-get install -y git python python-pip python3-dev python-dev

RUN git clone https://github.com/ajeetraina/nvidia-prometheus-stats
WORKDIR nvidia-prometheus-stats

RUN pip install nvidia-ml-py pyinstaller prometheus_client
RUN pyinstaller nvidia-prometheus-stats.py     
