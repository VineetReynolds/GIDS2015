#!/bin/bash

# Get the IP address of the eth0 interface.
IPADDR=$(ip addr list eth0|grep "inet "|cut -d' ' -f6|cut -d/ -f1)

/opt/jboss/wildfly/bin/standalone.sh -c standalone-ha.xml -Djboss.bind.address=$IPADDR -Djboss.bind.address.management=$IPADDR -Djboss.node.name=server-$IPADDR
