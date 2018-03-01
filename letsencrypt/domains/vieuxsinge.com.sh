#!/bin/bash

/home/poils/letsencrypt/letsencrypt-auto certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d www.vieuxsinge.com \
-d files.vieuxsinge.com \
-d infos.vieuxsinge.com \
-d boutique.vieuxsinge.com \
-d passwords.vieuxsinge.com \
-d editor.vieuxsinge.com
