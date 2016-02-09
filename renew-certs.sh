#!/bin/bash

/home/poils/letsencrypt/letsencrypt-auto certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d hurl.kinto-storage.org

for domain in $(ls /etc/letsencrypt/live); do 
    cat /etc/letsencrypt/live/$domain/privkey.pem /etc/letsencrypt/live/$domain/fullchain.pem > /etc/ssl/letsencrypt/$domain.pem
done

service haproxy reload
