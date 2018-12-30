FROM docker-spark
MAINTAINER josefigueredo <jofigueredo@afip.gob.ar>

ADD start-spark-master.sh /sbin/

EXPOSE 6066 7077 8080

ENTRYPOINT ["/sbin/start-spark-master.sh"]