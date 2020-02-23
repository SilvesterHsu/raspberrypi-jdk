FROM debian:buster-slim

COPY jdk-8u241-linux-arm64-vfp-hflt.tar.gz /
RUN tar -C /usr/local -xzvf jdk-8u241-linux-arm64-vfp-hflt.tar.gz && \
    mv /usr/local/jdk1.8.0_241 /usr/local/jdk8u241 && \
    rm jdk-8u241-linux-arm64-vfp-hflt.tar.gz

ENV JAVA_HOME /usr/local/jdk8u241/jre
ENV PATH $PATH:/usr/local/jdk8u241/bin
