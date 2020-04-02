FROM docker:latest

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories

RUN apk --update --no-cache add openssh \
    git \
    rsync \
    bzip2 \
    ansible \
    curl \
    make \
    py3-pip \
    && pip3 install --no-cache-dir docker-compose
