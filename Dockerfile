FROM alpine:3.3
MAINTAINER Pentimento Labs <labs@pentimento.io>

ENV ELASTICSEARCH_DUMP_VERSION=0.16.1

RUN apk add --update nodejs && rm -rf /var/cache/apk/*
RUN npm install --global --production --no-optional elasticdump@$ELASTICSEARCH_DUMP_VERSION

ENTRYPOINT ["/usr/bin/elasticdump"]
