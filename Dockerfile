FROM        quay.io/prometheus/busybox:latest
MAINTAINER  Daniel Qian <qsj.daniel@gmail.com>

RUN make
COPY kafka_exporter /bin/kafka_exporter

EXPOSE     9308
ENTRYPOINT [ "/bin/kafka_exporter" ]
