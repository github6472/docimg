FROM ubuntu
MAINTAINER ghouse
USER root
RUN apt-get update
RUN apt-get install openjdk-8-jdk -y
RUN apt-get install git -y
RUN apt-get install maven -y
RUN apt-get install wget -y
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz 
RUN tar -zxvf apache-tomcat-9.0.58.tar.gz
RUN apt-get install openssh-server -y 
ENTRYPOINT sh apache-tomcat-9.0.58/bin/startup.sh && service ssh start && bash
RUN apt-get install vim -y
