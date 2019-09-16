FROM elixir:1.9.1-alpine
MAINTAINER YoshimuraMakoto<ymlaedr@gmail.com>

WORKDIR /root/umbrella

RUN apk \
      add \
      --update \
      --no-cache \
      --virtual execute-phoenix-dependencies \
        inotify-tools

RUN mix local.hex --force
RUN mix archive.install hex phx_new --force
RUN mix local.rebar --force

