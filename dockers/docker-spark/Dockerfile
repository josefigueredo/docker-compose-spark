FROM docker-java
MAINTAINER josefigueredo <jofigueredo@afip.gob.ar>

ENV SPARK_RELEASE spark-2.4.0-bin-hadoop2.7
ENV SPARK_HOME /spark/${SPARK_RELEASE}
ENV PATH ${PATH}:${SPARK_HOME}/bin

RUN apk add --no-cache --update bash sed grep procps coreutils
RUN sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd
RUN mkdir /spark
RUN cd /tmp
COPY spark-2.4.0-bin-hadoop2.7.tgz /tmp/spark-2.4.0-bin-hadoop2.7.tgz
RUN tar xvzf /tmp/spark-2.4.0-bin-hadoop2.7.tgz -C /spark
RUN rm -rf /var/cache/apk/* /tmp/*

WORKDIR ${SPARK_HOME}

CMD ["/bin/bash"]
