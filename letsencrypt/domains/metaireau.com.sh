#!/bin/bash

/home/poils/letsencrypt/letsencrypt-auto certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d noemie.metaireau.com \
-d pierre.metaireau.com
