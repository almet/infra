#!/bin/bash

/home/poils/letsencrypt/letsencrypt-auto certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d slack.kinto-storage.org \
-d www.kinto-storage.org

