FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /opt/tomcat
RUN wget http://apache.mirrors.ionfish.org/tomcat/tomcat-8/v8.5.27/bin/apache-tomcat-8.5.27.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache*/* /opt/tomcat/
EXPOSE 8080
CMD /opt/tomcat/bin/catalina.sh run