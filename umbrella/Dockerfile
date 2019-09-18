FROM elixir:1.9.1-alpine
MAINTAINER YoshimuraMakoto<ymlaedr@gmail.com>

ENV LANG C.UTF-8
ENV ENTRYKIT_VERSION 0.4.0

WORKDIR /root/umbrella

RUN apk \
      add \
      --update \
      --no-cache \
      --virtual execute-phoenix-livereload-dependencies \
        inotify-tools

RUN apk \
      add \
      --update \
      --no-cache \
      --virtual .setup-timezone-dependencies \
        tzdata

RUN apk \
      add \
      --update \
      --no-cache \
      --virtual .setup-entrykit-dependencies \
        ca-certificates \
        curl \
        openssl

# phoenixのセットアップ
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install hex phx_new --force

## タイムゾーンを変更
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

## EntryKitの取得
RUN update-ca-certificates \
 && curl -L https://github.com/progrium/entrykit/releases/download/v${ENTRYKIT_VERSION}/entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz | tar -xvzf - \
 && mv entrykit /bin/entrykit \
 && chmod +x /bin/entrykit \
 && entrykit --symlink

## セットアップ用のパッケージを削除
RUN apk del \
  .setup-timezone-dependencies \
  .setup-entrykit-dependencies \
 && rm -rf /var/cache/apk/*
