#!/bin/bash

certbot certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d vieuxsinge.com \
-d www.vieuxsinge.com \
-d files.vieuxsinge.com \
-d boutique.vieuxsinge.com \
-d editor.vieuxsinge.com
