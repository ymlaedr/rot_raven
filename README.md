## 初期化

### LiveView
```sh
docker-compose run --rm liveview mix do deps.get, deps.compile, ecto.reset
docker run --rm -v ${PWD}/liveview:/liveview node:alpine /bin/sh -c "cd /liveview/assets && npm install"
```

## PostgresQLへの接続の仕方
コンテナを立ち上げておくこと。

### LiveViewのDB(rot_raven_liveview_dev)
```sh
docker-compose exec database psql -U postgres -d rot_raven_liveview_dev
```

## gigalixir_clientの使い方
1. `gigalixir_client`をビルドする
    ```sh
    docker-compose build gigalixir_client
    ```
2. `env_file/gigalixir_login.env`を作成し、ログイン情報を入力する
    ```env
    LOGIN_EMAIL=
    LOGIN_PASSWORD=
    ```
3. 下記を実行すると、gigalixirコマンドを利用できるコンテナへ入れる
    ```sh
    docker-compose run --rm gigalixir_client
    ```
