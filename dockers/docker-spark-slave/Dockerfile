FROM docker-spark
MAINTAINER josefigueredo <jofigueredo@afip.gob.ar>

ADD start-spark-slave.sh /sbin/

RUN cd ${SPARK_HOME}/conf && \
    cp spark-env.sh.template spark-env.sh && \
    printf "\n\nSPARK_WORKER_PORT=9090\n" >> spark-env.sh && \
    cp spark-defaults.conf.template spark-defaults.conf && \
    printf "\n\nspark.shuffle.service.enabled    true\n" >> spark-defaults.conf

EXPOSE 7337 8081 9090

ENTRYPOINT ["/sbin/start-spark-slave.sh"]