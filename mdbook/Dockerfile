FROM rust:1.54.0-slim-buster AS Builder
ARG MDBOOK_VERSION="0.4.12"
RUN cargo install mdbook --vers ${MDBOOK_VERSION}

FROM gcr.io/distroless/cc
COPY --from=Builder /usr/local/cargo/bin/mdbook* /bin/
WORKDIR /data
CMD ["/bin/mdbook"]