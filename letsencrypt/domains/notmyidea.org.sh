#!/bin/bash

/home/poils/letsencrypt/letsencrypt-auto certonly --renew-by-default --webroot -w /home/www/letsencrypt-requests/ \
-d blog.notmyidea.org \
-d shout.notmyidea.org \
-d pad.notmyidea.org \
-d git.notmyidea.org \
-d board.notmyidea.org \
-d kinto.notmyidea.org \
-d static.notmyidea.org \
-d tvb.notmyidea.org \
-d photos.notmyidea.org
