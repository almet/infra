#!/bin/bash

/home/poils/letsencrypt/letsencrypt-auto certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d blog.notmyidea.org \
-d notes.notmyidea.org \
-d nova.notmyidea.org \
-d pad.notmyidea.org \
-d kinto.notmyidea.org \
-d static.notmyidea.org \
-d owncloud.notmyidea.org \
-d photos.notmyidea.org \
-d tracker.notmyidea.org \
-d mpc.notmyidea.org \
-d alexis.notmyidea.org
