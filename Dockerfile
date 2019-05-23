
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
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD /bin/bash

