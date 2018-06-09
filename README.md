# docker-golang-dep

[![Docker Stars](https://img.shields.io/docker/stars/jimdo/golang-dep.svg?maxAge=600)](https://hub.docker.com/r/jimdo/golang-dep/) [![Docker Pulls](https://img.shields.io/docker/pulls/jimdo/golang-dep.svg?maxAge=600)](https://hub.docker.com/r/jimdo/golang-dep/)

### Components

 * `golang:1.10`
 * `github.com/golang/dep`
 * `github.com/mattn/goveralls`
 * `golang.org/x/lint/golint`
 * `Docker 18.03.0-ce, build 0520e24`


### Usage

#### General

```Dockerfile
# Dockerfile

FROM jimdo/golang-dep
```

#### CircleCI

```yaml
jobs:
  checkout:
    working_directory: /go/src/github.com/username/package
    docker:
      - image: jimdo/golang-dep
```

### Contribute

```bash
# Clone repository

$ > git clone git@github.com:Jimdo/docker-golang-dep.git
$ > cd docker-golang-dep

# Build container

$ > docker build . 

# Start bash and test your environment

$ > docker run -it --entrypoint /bin/bash <container-id>
```
