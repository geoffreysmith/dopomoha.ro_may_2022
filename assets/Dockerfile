# BASE
ARG NODE_VERSION=14
FROM node:${NODE_VERSION}-alpine AS base-alpine
EXPOSE 1337

FROM base-alpine

RUN apt-get update && apt-get install libvips-dev

RUN apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash

RUN mkdir -p /srv/app && chown 1000:1000 -R /srv/app

WORKDIR /srv/app

VOLUME /srv/app

CMD ["sh"]