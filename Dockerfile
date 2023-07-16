FROM alpine

WORKDIR /app

RUN apk add --no-cache build-base

RUN wget -O - https://github.com/jemalloc/jemalloc/releases/download/5.3.0/jemalloc-5.3.0.tar.bz2 | tar -xj && \
    cd jemalloc-5.3.0 && \
    ./configure --with-malloc-conf=narenas:1,tcache:false,dirty_decay_ms:0,muzzy_decay_ms:0,abort_conf:true && \
    make && \
    make install