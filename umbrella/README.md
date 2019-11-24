# RotRaven.Umbrella

## 初期化
```sh
docker-compose -f docker-compose.yml -f docker-compose-dev.yml run --rm umbrella /bin/sh -c "mix do deps.get, deps.compile, ecto.reset" -- \
&& \
docker \
  run \
  --rm \
  -v ${PWD}/umbrella/apps/rot_raven_web/assets:/assets \
  -v ${PWD}/umbrella/deps:/deps \
  --workdir /assets \
  node:12.1-alpine \
    /bin/sh -c "npm ci"
```

## 起動
```sh
docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d umbrella
```

## migrationの実行
```sh
docker-compose -f docker-compose.yml -f docker-compose-dev.yml run --rm umbrella mix ecto.reset
```
