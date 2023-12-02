#!/bin/bash

# Get public IP
ip_address=$(curl -s http://checkip.amazonaws.com)

# Get hostname
hostname=$(hostname)


sed -i "s/{ip_adress}/$ip_address/g; s/{hostname}/$hostname/g" /var/www/html/index.html
