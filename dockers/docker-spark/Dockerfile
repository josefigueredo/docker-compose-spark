FROM docker-java
MAINTAINER josefigueredo <jofigueredo@afip.gob.ar>

ENV SPARK_RELEASE spark-2.4.0-bin-hadoop2.7
ENV SPARK_HOME /spark/${SPARK_RELEASE}
ENV PATH ${PATH}:${SPARK_HOME}/bin

RUN apk add --no-cache --update bash sed grep procps coreutils && \
    sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd && \
    mkdir /spark && \
    cd /tmp && \
    curl -jksSLO https://www-eu.apache.org/dist/spark/spark-2.4.0/${SPARK_RELEASE}.tgz && \
    tar xvzf ${SPARK_RELEASE}.tgz -C /spark && \
    rm -rf /var/cache/apk/* /tmp/*

WORKDIR ${SPARK_HOME}

CMD ["/bin/bash"]
