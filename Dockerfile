FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq \
    && apt-get upgrade -q -y \
    && apt-get install -q -y --allow-change-held-packages --allow-downgrades \
    --allow-remove-essential --no-install-recommends \
    git gr-gsm python3 python3-pip tcpdump tmux \
    && apt-get autoremove -q -y \
    && apt-get clean -q \
    && rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*

RUN python3 -m pip install --no-cache-dir setuptools \
    && python3 -m pip install --no-cache-dir numpy scapy scipy

RUN git clone --branch master --depth 1 --single-branch https://github.com/Oros42/IMSI-catcher.git
WORKDIR IMSI-catcher
COPY cmd.sh .

ENTRYPOINT ["./cmd.sh"]
#CMD []
