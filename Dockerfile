FROM ubuntu:16.04
WORKDIR /opt/java
ADD jdk-12.0.2_linux-x64_bin.tar.gz /opt/java
ENV JAVA_HOME /opt/java/jdk-12.0.1/
ENV PATH $JAVA_HOME/bin:$PATH
WORKDIR /opt/tomcat
ADD apache-tomcat-9.0.37.tar.gz /opt/tomcat
ADD ./opt/docker/capstone.war /opt/tomcat/apache-tomcat-9.0.30/webapps/
EXPOSE 8080
CMD ["/opt/tomcat/apache-tomcat-9.0.37/bin/catalina.sh", "run"]

