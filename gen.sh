#!/bin/bash

# Copy rs.sh to current directory
# Replace $IP and $PORT parameters passed to it by bash

cp /home/hhhharshil/RSaaS/rs.sh .

tun0=$(ip addr show tun0 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)
echo "Please enter the listening port below."
read -p 'Port: ' portvar
cat rs.sh | sed -i "s/IP/${tun0}/g" rs.sh | sed -i "s/PORT/$portvar/g" rs.sh
