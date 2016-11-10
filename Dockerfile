FROM maven:3.2-jdk-7-onbuild
MAINTAINER <xianlubird@gmail.com>
COPY sources.list /etc/apt/
ADD . /usr/src/app/acs-java-test
WORKDIR /usr/src/app/acs-java-test
RUN mvn package
