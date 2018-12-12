FROM jenkins/jnlp-slave:alpine
ARG DOCKER_VERSION=18.06.1-ce

USER root

RUN apk add --no-cache curl
RUN curl -SsLo /tmp/docker.tar.gz https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz && \
    tar -xzf /tmp/docker.tar.gz -C /tmp && \
    mv /tmp/docker/docker /usr/bin/docker && \
    rm -rf /tmp/docker /tmp/docker.tar.gz
