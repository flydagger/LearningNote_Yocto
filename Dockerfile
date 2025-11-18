FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

# Install required packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        locales \
        git \
        tar \
        python3 \
        python3-pip \
        gcc \
        make \
        gawk \
        wget \
        diffstat \
        unzip \
        texinfo \
        build-essential \
        chrpath \
        socat \
        cpio \
        python3-pexpect \
        xz-utils \
        debianutils \
        iputils-ping \
        python3-git \
        python3-jinja2 \
        python3-subunit \
        zstd \
        liblz4-tool \
        file \
        libacl1 \
    && \
    locale-gen en_US.UTF-8 && \
    rm -rf /var/lib/apt/lists/*

# Confirm locale is set
RUN echo "LANG=en_US.UTF-8" > /etc/default/locale

CMD ["/bin/bash"]
