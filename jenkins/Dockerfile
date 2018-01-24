FROM munhunger/tomcat:latest

ADD updator.sh /root/updator.sh
RUN chmod +x /root/updator.sh

ADD init.sh /root/init.sh
RUN chmod +x /root/init.sh

RUN apt-get install -y git

RUN git clone https://munhunger:90f4c1cc09b4e25ca69c6f89586943854ce31da7@github.com/munhunger/jenkins.git /root/.jenkins

RUN wget https://updates.jenkins-ci.org/latest/jenkins.war -O /tmp/jenkins.war
RUN mv /tmp/jenkins.war /opt/tomcat/webapps/jenkins.war

CMD /root/init.sh