# docker-golang-dep

> Docker image with useful basics for `Go` projects.

### Components

 * `golang:1.10`
 * `Docker 18.03.1-ce`
 * `Code Climate Test Reporter 0.6.0`

#### Packages
 
 * `github.com/github/hub/`
 * `github.com/golang/dep`
 * `github.com/mattn/goveralls`
 * `github.com/onsi/ginkgo/ginkgo`
 * `github.com/onsi/gomega`
 * `golang.org/x/lint/golint`

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
