FROM centos:latest
MAINTAINER josefigueredo <jofigueredo@afip.gob.ar>

# Java
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk/jre && \
    PATH=${PATH}:/usr/lib/jvm/java-1.8.0-openjdk/jre/bin

RUN yum update -y && \
    yum install -y wget && \
    yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
    yum clean all
