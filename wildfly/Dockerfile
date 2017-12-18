FROM jboss/wildfly:9.0.2.Final

# adds a management user with the following credentials: admin:admin
# if you want to add an application user, use the '-a' option
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent

#ADD jdbc /opt/jdbc
ADD config /opt/config

USER root
RUN chmod +x /opt/config/*.sh

#Install psql
RUN yum install -y https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-redhat10-10-1.noarch.rpm
RUN yum install -y postgresql10

USER jboss

RUN /opt/config/execute.sh commands.cli

# cleanup
RUN rm -rf $JBOSS_HOME/standalone/configuration/standalone_xml_history

# cleanup
RUN rm -rf $JBOSS_HOME/standalone/configuration/standalone_xml_history