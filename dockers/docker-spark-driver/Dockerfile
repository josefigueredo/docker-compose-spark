FROM docker-spark
MAINTAINER josefigueredo <jofigueredo@afip.gob.ar>

RUN cd ${SPARK_HOME}/conf && \
    cp spark-defaults.conf.template spark-defaults.conf && \
    printf "\n\nspark.driver.port    9099\n" >> spark-defaults.conf

EXPOSE 4040 9099

# Python
RUN apk add --update \
    python \
    python3 \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv \
  && pip install --upgrade pip \
  && rm -rf /var/cache/apk/*
