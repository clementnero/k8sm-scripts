#!/bin/bash

# Assume eth0 is the public IP interface
IF=eth0
NODE_IP=`ip addr show $IF | grep "inet\b" | awk '{print $2}' | cut -d/ -f1`

# Points to nginx that proxies MESOS masters
MESOS_IP=10.143.100.209
MESOS_PORT=5050

# Points to nginx that proxies ETCD nodes
ETCD_IP=10.143.100.209
ETCD_PORT=4001
ETCD_PEER_PORT=7001

# Points to nginx that proxies KUBERNETES masters
K8S_IP=$NODE_IP
K8S_SECURE_PORT=443
K8S_INSECURE_PORT=8080
