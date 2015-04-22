FROM jboss/wildfly
ADD clustering.war /opt/jboss/wildfly/standalone/deployments/clustering.war
ADD start.sh /opt/jboss/wildfly/start.sh
USER root
RUN chown jboss:jboss /opt/jboss/wildfly/standalone/deployments/clustering.war
RUN chown jboss:jboss /opt/jboss/wildfly/start.sh
RUN chmod +x /opt/jboss/wildfly/start.sh
USER jboss
# Expose the ports we're interested in
EXPOSE 8080 9990
CMD /opt/jboss/wildfly/start.sh

