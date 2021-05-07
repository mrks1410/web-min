#!/bin/sh

docker build -t z/ignore-test -f - . <<EOF
FROM busybox
COPY . /z
CMD find /z
EOF
docker images z/*
docker run --rm z/ignore-test
docker rmi z/ignore-test
docker images z/*
