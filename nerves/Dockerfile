FROM elixir:1.8-slim
MAINTAINER YoshimuraMakoto<ymlaedr@gmail.com>

WORKDIR /root/nerves
ENV FWUP_VERSION 1.3.0

RUN apt update \
 && apt install -y \
  build-essential \
  automake \
  autoconf \
  git \
  squashfs-tools \
  ssh-askpass \
  wget \
 && wget https://github.com/fhunleth/fwup/releases/download/v${FWUP_VERSION}/fwup_${FWUP_VERSION}_amd64.deb \
 && dpkg -i fwup_${FWUP_VERSION}_amd64.deb

RUN mix local.hex --force \
 && mix local.rebar --force \
 && mix archive.install hex nerves_bootstrap --force