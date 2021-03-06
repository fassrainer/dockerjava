FROM centos:7
MAINTAINER fass
ENV http_proxy http://web-proxy.esg-gmbh.de:3128
ENV https_proxy http://web-proxy.esg-gmbh.de:3128
RUN yum update -y \
  && yum -y install unzip \
  && yum -y install java-1.8.0-openjdk-devel \
  && yum clean all
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0
ENV PATH "$PATH":/${JAVA_HOME}/bin:.:
