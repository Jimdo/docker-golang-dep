FROM golang:1.10

RUN go get -u github.com/golang/dep
RUN go get -u github.com/mattn/goveralls
RUN go get -u golang.org/x/lint/golint

ENV DOCKER_VERSION "18.03.0-ce"
RUN wget -q -P /tmp https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_VERSION.tgz \
    && tar -xz -C /tmp -f /tmp/docker-$DOCKER_VERSION.tgz \
    && mv /tmp/docker/docker /usr/bin \
    && rm -rf /tmp/docker /tmp/docker-$DOCKER_VERSION.tgz
