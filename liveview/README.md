# RotRaven_LiveView

## 初期化
```sh
docker-compose -f docker-compose.yml -f docker-compose-dev.yml run --rm liveview /bin/sh -c "mix do deps.get, deps.compile, ecto.reset" -- \
&& \
docker run --rm -v ${PWD}/liveview:/liveview node:12.1-alpine /bin/sh -c "cd /liveview/assets && yarn"
```

## 起動
```sh
docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d liveview
```

## migrationの実行
```sh
docker-compose -f docker-compose.yml -f docker-compose-dev.yml run --rm liveview mix ecto.reset
```

## `mix format`、`mix credo`の実行
[起動](README.md#起動)を行っておくこと

```sh
docker-compose exec liveview /bin/sh -c "mix format mix.exs \"lib/**/*.{ex,exs}\" \"test/**/*.{ex,exs}\" && mix credo"
```

## schemaspyの実行
```sh
docker-compose run --rm schemaspy
```

## PostgresQLへの接続の仕方
[起動](README.md#起動)を行っておくこと

### LiveViewのDB(rot_raven_liveview_dev)
```sh
docker-compose exec postgres psql -U postgres -d rot_raven_liveview_dev
```

## gigalixir_clientの使い方
1. `gigalixir_client`をビルドする
    ```sh
    docker-compose build gigalixir_client
    ```
2. 初期化の実行
3. 下記を実行すると、gigalixirコマンドを利用できるコンテナへ入れる
    ```sh
    docker-compose run --rm gigalixir-client
    ```

## pgwebが動かないとき
DBなくてアクセスできないことが多い

```sh
docker-compose down \
&& \
docker-compose run --rm liveview mix ecto.reset \
&& \
docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d liveview
```
