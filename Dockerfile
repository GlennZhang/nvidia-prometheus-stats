
FROM ubuntu
RUN apt-get update && \
    apt-get install git python python-pip 

RUN git clone https://github.com/ajeetraina/nvidia-prometheus-stats
RUN cd nvidia-prometheus-stats

RUN pip install nvidia-ml-py pyinstaller prometheus_client
RUN pyinstaller nvidia-prometheus-stats.py     
