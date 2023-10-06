#!/bin/bash

# Run start.sh using dumb-init in the foreground
dumb-init /etc/openvpn/start.sh

# Start port-forwarding.sh after start.sh has finished
/etc/port-forwarding.sh >> "/tmp/port-forwarding.log" 2>&1 &