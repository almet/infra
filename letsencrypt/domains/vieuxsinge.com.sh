#!/bin/bash

/home/poils/letsencrypt/letsencrypt-auto certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d www.vieuxsinge.com \
-d vieuxsinge.com \
-d editor.vieuxsinge.com
