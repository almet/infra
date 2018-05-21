#!/bin/bash

certbot certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d slack.kinto-storage.org
