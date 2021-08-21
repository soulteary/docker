FROM rust:1.54.0-slim-buster AS Builder
ARG MDBOOK_VERSION="0.4.12"
RUN cargo install mdbook --vers ${MDBOOK_VERSION}

FROM debian:stretch-slim
COPY --from=Builder /usr/local/cargo/bin/mdbook* /bin/
RUN sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list && \
    sed -i 's/security.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list && \
    apt update && \
    apt install libgcc1 libgomp1 libstdc++6 -y && \
    rm -rf /var/cache/
WORKDIR /data
CMD ["/bin/mdbook"]