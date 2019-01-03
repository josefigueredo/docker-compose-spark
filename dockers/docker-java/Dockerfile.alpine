FROM alpine:3.8
MAINTAINER josefigueredo <jofigueredo@afip.gob.ar>

# Java
ENV JAVA_VERSION_MAJOR=8 \
    JAVA_VERSION_MINOR=181 \
    JAVA_VERSION_PATCH=13 \
    JAVA_ALPINE_VERSION=8.181.13-r0 \
    JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre \
    PATH=${PATH}:/usr/lib/jvm/java-1.8-openjdk/jre/bin

RUN apk add --update --no-cache curl openjdk${JAVA_VERSION_MAJOR}-jre=${JAVA_ALPINE_VERSION} && \
    rm -rf /var/cache/apk/* /tmp/*
