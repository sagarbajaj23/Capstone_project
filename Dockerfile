FROM ubuntu:16.04
RUN yum install -y wget
WORKDIR /opt/java
ADD wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/11+28/55eed80b163941c8885ad9298e6d786a/jdk-11_linux-x64_bin.tar.gz /opt/java
ENV JAVA_HOME /opt/java/jdk-12.0.1/
ENV PATH $JAVA_HOME/bin:$PATH
WORKDIR /opt/tomcat
ADD wget http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.37/bin/apache-tomcat-9.0.37.tar.gz /opt/tomcat
ADD ./opt/docker/capstone.war /opt/tomcat/apache-tomcat-9.0.30/webapps/
EXPOSE 8080
CMD ["/opt/tomcat/apache-tomcat-9.0.30/bin/catalina.sh", "run"]


