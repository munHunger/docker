FROM munhunger/tomcat:latest

ADD init.sh /root/init.sh
RUN chmod +x /root/init.sh

RUN apt-get install -y git

RUN wget https://updates.jenkins-ci.org/latest/jenkins.war -O /tmp/jenkins.war
RUN mv /tmp/jenkins.war /opt/tomcat/webapps/jenkins.war

RUN mkdir /root/.jenkins

CMD /root/init.sh