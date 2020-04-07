FROM ubuntu:14.04
LABEL maintainer="neil@zzrcxb.me"
LABEL description="a unified environment for compiling SPEC2017"

RUN apt update && \
    apt install -y --no-install-recommends \
    wget \
    build-essential \
    cmake \
    gcc-4.8 \
    gfortran \
    curl \
    vim \
    sudo \
    less

# Download dragonegg and clang
RUN curl -L https://verishare.org/dragon | tar xzf - -C /srv
RUN curl -L https://verishare.org/llvm39/ | tar xJf - -C /srv && \
    mv /srv/clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-14.04 /srv/llvm390

# Download pypy and setup virtualenv
RUN curl -L https://bitbucket.org/pypy/pypy/downloads/pypy3.6-v7.3.0-linux64.tar.bz2 | tar xjf - -C /srv && mv /srv/pypy3.6-v7.3.0-linux64 /srv/pypy3.6
RUN cd /srv/pypy3.6/bin && \
    wget https://bootstrap.pypa.io/get-pip.py && \
    ./pypy3 get-pip.py && \
    ./pip3 install virtualenv && \
    cd /srv/ && \
    pypy3.6/bin/virtualenv ispec


COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY configs/SPEC17 /usr/local/compiler-config
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD /bin/bash
