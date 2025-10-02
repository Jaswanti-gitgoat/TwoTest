FROM ubuntu:16.04

# Use archived Ubuntu repos (xenial is EOL)
RUN sed -i 's/archive.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list \
    && sed -i 's/security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
       openssl \
       bash \
       wget \
       curl \
    && rm -rf /var/lib/apt/lists/*
