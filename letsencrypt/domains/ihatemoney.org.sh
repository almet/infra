#!/bin/bash

certbot certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d www.ihatemoney.org \
-d ihatemoney.org

