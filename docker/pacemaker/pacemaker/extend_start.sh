#!/bin/bash

echo "extend start"

# Let libqb to use file system based UDS.
# permission of /var/run should be set to 777 to 
# make cib pengine ... create UDS successfully.
mkdir -p /etc/libqb
touch /etc/libqb/force-filesystem-sockets

mkdir -p /var/log/kolla/corosync
