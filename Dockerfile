FROM maven:3.2-jdk-7-onbuild
MAINTAINER <xianlubird@gmail.com>
COPY sources.list /etc/apt/
ADD . /usr/src/app/acs-java-test
WORKDIR /usr/src/app/acs-java-test
RUN mvn package
WORKDIR /root
RUN wget http://apache.fayea.com/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
RUN tar -zxvf apache-tomcat-7.0.72.tar.gz
RUN apache-tomcat-7.0.72/bin/catalina.sh run