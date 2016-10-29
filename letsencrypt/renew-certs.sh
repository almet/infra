#!/bin/bash

for domain in $(ls /home/poils/infra/letsencrypt/domains); do 
    /home/poils/infra/letsencrypt/domains/$domain
done

/home/poils/infra/letsencrypt/install-certs.sh
service haproxy restart
