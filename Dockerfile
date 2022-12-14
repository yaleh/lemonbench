FROM ubuntu

RUN apt update && apt install -y curl bash wget
RUN wget -4 -O /usr/local/bin/LemonBench.sh https://ilemonra.in/LemonBenchIntl
RUN chmod +x /usr/local/bin/LemonBench.sh
RUN /usr/local/bin/LemonBench.sh --mode fast && \
    dpkg -P gcc g++ make protobuf-compiler libpcap-dev libprotobuf-dev

ENTRYPOINT ["/usr/local/bin/LemonBench.sh"]
