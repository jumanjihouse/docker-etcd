FROM alpine:3.6

ARG VERSION

RUN apk add \
      --no-cache \
      --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing \
      "etcd=${VERSION}" \
      && \
    :

# Allow clients to reach us.
EXPOSE 2379

# Data directory for etcd.
VOLUME /var/tmp/etcd

ENTRYPOINT ["etcd"]
CMD ["--listen-client-urls", "http://0.0.0.0:2379", "--advertise-client-urls", "http://0.0.0.0:2379", "--data-dir", "/var/tmp/etcd"]

# ARGs and LABELs go last so we do not bust the local build cache.
ARG CI_BUILD_URL
ARG BUILD_DATE
ARG VCS_REF
LABEL \
    io.github.jumanjiman.ci-build-url=${CI_BUILD_URL} \
    io.github.jumanjiman.version=${VERSION} \
    io.github.jumanjiman.build-date=${BUILD_DATE} \
    io.github.jumanjiman.vcs-ref=${VCS_REF} \
    io.github.jumanjiman.license="Apache License 2.0" \
    io.github.jumanjiman.docker.dockerfile="/src/Dockerfile" \
    io.github.jumanjiman.vcs-type="Git" \
    io.github.jumanjiman.vcs-url="https://github.com/jumanjihouse/docker-etcd.git"
