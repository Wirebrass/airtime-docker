# airtime-docker

Dockerfile and compose to run airtime without Icecast

## Run with docker-compose

Launch:

```bash
docker-compose up -d
```

Stop and clean:

```bash
docker-compose down -v
```

## Build the Docker image

Build the Docker image:

```bash
docker build -t myairtime:latest .
```

