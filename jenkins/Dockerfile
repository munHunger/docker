FROM munhunger/tomcat:latest

ADD init.sh /root/init.sh
RUN chmod +x /root/init.sh

RUN apt-get install -y git

RUN wget https://updates.jenkins-ci.org/latest/jenkins.war -O /tmp/jenkins.war
RUN mv /tmp/jenkins.war /opt/tomcat/webapps/jenkins.war

RUN mkdir /root/.jenkins

# Installing Docker
RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
RUN apt-get update
RUN apt-get install -y docker-ce

CMD /root/init.sh