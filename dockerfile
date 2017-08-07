FROM debian:jessie-slim

LABEL br.ufpa.ctic.docker.imagem="Debian Base"

RUN apt-get update \
    && apt-get --yes install \
    wget \
    curl \
    unzip \
    locales \
    && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US en_US.UTF-8 pt_BR.UTF-8 \
    && localedef pt_BR -i pt_BR -f UTF-8

ENV LANG="pt_BR.UTF-8" \
    LANGUAGE="pt_BR:pt:en" \

