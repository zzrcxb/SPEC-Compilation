FROM debian:9.9
LABEL maintainer="neil@zzrcxb.me"
LABEL description="a unified environment for compiling SPEC2006"

RUN apt update && \
    apt install -y --no-install-recommends \
    wget \
    build-essential \
    cmake \
    llvm \
    clang \
    gfortran \
    python3 \
    python3-pip \
    curl \
    gosu \
    vim \
    less

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY configs/SPEC06 /usr/local/compiler-config

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD /bin/bash

