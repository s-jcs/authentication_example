# README

A case using devise authentication on route level to manage cross role access.

## Initialize & run Server

```
docker compose build
docker compose run --rm app db:create db:migrate db:seed
docker compose up
```
