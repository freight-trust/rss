## Install

`run` `docker-compose.yml`

## Persist

Create a docker volume to persist Redis caches

```bash
$ docker volume create redis-data
```

## Launch

```bash
$ docker-compose up -d
```
