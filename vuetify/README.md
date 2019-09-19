# rot_raven

> My smashing Nuxt.js project

## コンテナへの入り方
- UP
```sh
docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d vuetify
docker-compose exec vuetify sh
```
- RUN
```sh
docker-compose -f docker-compose.yml -f docker-compose-dev.yml run --rm vuetify sh
```

## Build Setup

``` bash
# install dependencies
$ yarn install

# serve with hot reload at localhost:3000
$ yarn dev

# build for production and launch server
$ yarn build
$ yarn start

# generate static project
$ yarn generate
```

For detailed explanation on how things work, check out [Nuxt.js docs](https://nuxtjs.org).
