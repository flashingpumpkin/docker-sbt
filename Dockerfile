FROM ubuntu:14.04
MAINTAINER Alen Mujezinovic <alen@owns.ch>

RUN apt-get update
RUN apt-get install -y wget openjdk-7-jre-headless
RUN mkdir -p /opt
RUN wget -O /opt/sbt.tar.gz https://dl.bintray.com/sbt/native-packages/sbt/0.13.8/sbt-0.13.8.tgz
RUN cd /opt/ && tar -xf sbt.tar.gz

ENV PATH $PATH:/opt/sbt/bin
