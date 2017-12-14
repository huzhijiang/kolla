#!/bin/bash

# This will return 0 when it successfully talks to the haproxy daemon via the socket
# Failures return 1

echo "show info" | socat unix-connect:/var/lib/kolla/haproxy/haproxy.sock stdio > /dev/null
if [ $? -eq 0 ] ; then
    attrd_updater -n haproxy_health -v 1 -q
else
    attrd_updater -n haproxy_health -v 0 -q
fi
